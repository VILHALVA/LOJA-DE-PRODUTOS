@extends('site.layout')

@section('title', 'ESSA É A HOME')

@section('conteudo')
    <div class="row container">

    @foreach ($produtos as $produto)
      <div class="col s12 m4">
      <div class="card">
          <div class="card-image">
            <img src="{{ url("storage/{$produto->imagem}") }}">
            @can('ver-produto', $produto)
            <a href="{{ route('site.details', $produto->slug)}}" class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">visibility</i></a>
            @endcan
          </div>
          <div class="card-content">
          <span class="card-title">{{$produto->nome}}</span>
            <p>{{$produto->descricao}}</p>
          </div>
        </div>
      </div>
      @endforeach
    </div>
    <div class="row center">
        {{$produtos->links('custom.pagination')}}
    </div>
@endsection


