<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Produto;
use App\Models\Categoria;
use Illuminate\Support\Str;

class ProdutoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    /***METODO DE LISTAGEM */
    public function index()
{
    // $produtos = Produto::paginate(3);
   // return view('site.home', compact('produtos'));
   $produtos = Produto::paginate(5);
   $categorias = Categoria::all();
    return view('admin.produtos', compact('produtos', 'categorias'));
}

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    /***METODO DE EXIBIR FORMULARIO */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    /***METODO DE SALAVA QUE VEM DO REQUEST */

    public function store(Request $request)
    {
        $produto = $request->all();

        if ($request->imagem) {
            $produto['imagem'] = $request->imagem->store('produtos');
        }

        $produto['slug'] = Str::slug($request->nome);

        $produto = Produto::create($produto);

        return redirect()->route('admin.produtos')->with('sucesso', 'Produto cadastrado com sucesso!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    /***METODO DE EXIBIR RECURSO ESPECIFICO PELO ID */

    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    /***METODO DE EXIBIR FORMULARIO PARA EDIÇÃO DE RECURSO*/

    public function edit($id) {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    /***METODO DE ATUALIZAR RECURSO */

    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    /***METODO DE DESTRUIR LGUM RECURSO ARMAZENADO */

    public function destroy($id) {
      $produto = Produto::find($id);
      $produto->delete();
      return redirect()->route('admin.produtos')->with('sucesso', 'Produto apagado com sucesso!');
    }
}