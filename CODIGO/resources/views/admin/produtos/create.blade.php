<!-- Modal Structure -->
<div id="create" class="modal">
    <div class="modal-content">
      <h4><i class="material-icons">card_giftcard</i> Novo produto</h4>
      <form action="{{route('admin.produto.store')}}" method="post" enctype="multipart/form-data">
      @csrf
      <input type="hidden" name="id_user" value="{{ auth()->user()->id}}">

        <div class="row">
          <div class="input-field col s6">
            <input name="nome" placeholder="Placeholder" id="nome" type="text" class="validate">
            <label for="nome">NOME</label>
          </div>
          <div class="input-field col s6">
            <input name="preco" id="preco" type="number" class="validate">
            <label for="preco">PREÇO</label>
          </div>
          <div class="input-field col s12">
            <input name="descricao" id="descricao" type="text" class="validate">
            <label for="descricao">DESCRIÇÃO</label>
          </div>

          <div class="input-field col s12">
            <select name="id_categoria">
            <option value="" disabled>Escolha a categoria!</option>
            @foreach($categorias as $c)
              <option value="{{$c->id}}">{{$c->nome}}</option>
            @endforeach
            </select>
            <label>CATEGORIA</label>
          </div>          
        </div>
        
        <div class="file-field input-field">
          <div class="btn">
            <span>Imagem</span>
            <input name="imagem" type="file">
          </div>
          <div class="file-path-wrapper">
            <input class="file-path validate" type="text">
          </div>
        </div>
       
        <button type="submit" class="waves-effect waves-green btn green right">CADASTRAR</button>
  </div>
  </form>
</div>