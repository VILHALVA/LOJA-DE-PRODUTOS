<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Categoria;
use App\Models\Produto;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller {

    public function index() {
        $usuarios = User::all()->count();
    
        // Grafico 1 - Usuários:
        $usersData = User::select([
            DB::raw('YEAR(created_at) as ano'),
            DB::raw('COUNT(*) as total')
        ])
        ->groupBy('ano')
        ->orderBy('ano', 'asc')
        ->get();
        
        // Preparando Arrays
        foreach($usersData as $user) {
            $ano[] = $user->ano;
            $total[] = $user->total;
        }

        // Formatar para chartJS
        $userLabel = "'COMPARATIVO DE CADASTROS DE USUÁRIOS'";
        $userAno = implode(',', $ano);
        $userTotal = implode(',', $total);
    
        // Gráfico 2 - Categorias
        $catData = Categoria::with('produtos')->get();

        // Preparando Arrays
        foreach($catData as $cat) {
            $catNome[] = "'".$cat->nome."'";
            $catTotal[] = $cat->produtos->count();
        }

        // Formatar para chartJS
        $catLabel = implode(',', $catNome);
        $catTotal = implode(',', $catTotal);

        return view('admin.dashboard', compact('usuarios', 'userLabel', 'userAno', 'userTotal', 'catLabel', 'catTotal'));
    }    
}
