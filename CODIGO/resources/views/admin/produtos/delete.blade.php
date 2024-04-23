<!-- Modal Structure -->
<div id="delete-{{$produto->id}}" class="modal">
    <div class="modal-content">
      <h4><i class="material-icons">delete</i> Tem certeza?</h4>
        <div class="row">
          <p>TEM CERTEZA QUE DESEJA EXCLUIR O {{$produto->nome}}?</p>
        </div> 

        <a href="#!" class="modal-close waves-effect waves-green btn blue right">CANCELAR</a>

        <form action="{{route('admin.produto.delete', $produto->id)}}" method="post">
        @method('DELETE');
        @csrf
        <button type="submit" class="waves-effect waves-green btn red right">EXCLUIR</button><br>
        </form>
</div>
  </div>