@extends('site.layout')

@section('title', 'CARRINHO')

@section('conteudo')
    <div class="row container">

    @if($mensagem = Session::get('sucesso'))
    <div class="card green">
        <div class="card-content white-text">
          <span class="card-title">PARABÉNS!</span>
          <p>{{ $mensagem }}</p>
        </div>
      </div>
    @endif

    @if($mensagem = Session::get('aviso'))
    <div class="card blue">
        <div class="card-content white-text">
          <span class="card-title">TUDO BEM!</span>
          <p>{{ $mensagem }}</p>
        </div>
      </div>
    @endif

    @if($itens->count() == 0)
    <div class="card orange">
        <div class="card-content white-text">
          <span class="card-title">SEU CARRINHO ESTÁ VAZIO!</span>
          <p>COMPRE NOSSOS PRODUTOS!</p>
        </div>
      </div>

    @else
    <h5>SEU CARRINHO POSSUI: {{ $itens->count() }} PRODUTOS!</h5>
    <table class="striped">
        <thead>
          <tr>
            <th></th>
              <th>NOME</th>
              <th>PREÇO</th>
              <th>QUANTIDADE</th>
              <th></th>
          </tr>
        </thead>

        <tbody>
        @foreach ($itens as $item)
          <tr>
            <td><img src="{{$item->attributes->image}}" alt="" width="70"   class="resposive-img circle"></td>
            <td>{{$item->name}}</td>
            <td>R${{ number_format($item->price, 2, ',', '.')}}</td>

            {{-- BTN ATUALIZAR--}}
            <form action="{{ route('site.atualizacarrinho') }}" method="post" enctype="multipart/form-data">
            @csrf
            <input type="hidden" name="id" value="{{ $item->id }}">
            <td><input style="width: 40px; font-weight: 900;" class="white center" min="1" type="number" name="quantity" value="{{$item->quantity}}"></td>
            <td>
            <button class="btn-floating waves-effect waves-light red"><i class="material-icons">refresh</i></button>
            </form>
            
            {{-- BTN REMOVER--}}
            <form action="{{ route('site.removecarrinho') }}" method="post" enctype="multipart/form-data">
            @csrf
            <input type="hidden" name="id" value="{{ $item->id }}">
            <button class="btn-floating waves-effect waves-light red"><i class="material-icons">delete</i></button>
            </form>
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>

      <div class="card orange">
        <div class="card-content white-text">
          <span class="card-title">VALOR TOTAL: R${{ number_format(Cart::getTotal(), 2, ',', '.')}}</span>
          <p>PAGUE EM 12X SEM JUROS!</p>
        </div>
      </div>

    @endif
      <div class="row container center">
      <a href="{{ route('site.index') }}" class="btn waves-effect waves-light blue">CONTINUAR<i class="material-icons right">arrow_back</i></a>
      <a href="{{ route('site.limparcarrinho') }}" class="btn waves-effect waves-light red">LIMPAR<i class="material-icons right">clear</i></a>
      <a href="{{route('admin.dashboard')}}" class="btn waves-effect waves-light green">FINALIZAR<i class="material-icons">check</i></a>
      </div>
    </div>
@endsection


