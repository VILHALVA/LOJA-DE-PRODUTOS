@extends('site.layout')
@section('title', 'DETALHES')

@section('conteudo')
    <div class="row container"> <br>
        <div class="col s12 m6">
            <img src="{{ url("storage/{$produto->imagem}") }}" class="responsive-img">
        </div>
        <div class="col s12 m6">
            <h3>{{$produto->nome}}</h3>
            <h5>R$ {{ number_format($produto->preco, 2, ',', '.')}}</h5>
            <p>{{$produto->descricao}}</p>
            <p>
                POSTADO POR: {{$produto->user->firstName}} <br>
                CATEGORIA: {{$produto->categoria->nome}}
        </p>
            <form action="{{ route('site.addcarrinho')}}" method="post" enctype="multipart/form-data">
            @csrf
            <input type="hidden" name="id" value="{{$produto->id}}">
            <input type="hidden" name="name" value="{{$produto->nome}}">
            <input type="hidden" name="price" value="{{$produto->preco}}">
            <input type="number" min="1" name="qnt" value="1">
            <input type="hidden" name="img" value="{{$produto->imagem}}">
            <button class="btn orange btn-large">COMPRAR</button>
        </form>
        </div>
    </div>
@endsection


