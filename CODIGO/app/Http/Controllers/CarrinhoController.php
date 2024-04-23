<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CarrinhoController extends Controller
{
    public function carrinhoLista() {
        $itens = \Cart::getContent();
        return view('site.carrinho', compact('itens'));
    }

    public function adicionaCarrinho(Request $request) {
        \Cart::add([
            'id' => $request->id,
            'name' => $request->name,
            'price' => $request->price,
            'quantity' => abs($request->qnt),
            'attributes' => array(
                'image' => $request->img
                )
        ]);

        return redirect()->route('site.carrinho')->with('sucesso', 'ESSE PRODUTO FOI ADICIONADO AO CARRINHO COM SUCESSO!');
    }

    public function removeCarrinho(Request $request) {
        \Cart::remove($request->id);

        return redirect()->route('site.carrinho')->with('sucesso', 'ESSE PRODUTO FOI REMOVIDO DO CARRINHO COM SUCESSO!');
    }

    public function atualizaCarrinho(Request $request) {
        \Cart::update($request->id, [
            'quantity' => [
                'relative' => false,
                'value' => abs($request->quantity),
            ],
        ]);

        return redirect()->route('site.carrinho')->with('sucesso', 'ESSE PRODUTO FOI ATUALIZADO NO CARRINHO COM SUCESSO!');
    }

    public function limparCarrinho() {
        \Cart::clear();

        return redirect()->route('site.carrinho')->with('aviso', 'SEU CARRINHO ESTÁ VAZIO!');
    }
}
