defmodule PhxTesteWeb.Botoes do
  use Surface.LiveView

  #alias PhxTesteWeb.Components.MyButton

    data count, :integer, default: 0

  def render(assigns) do
    ~F"""
    <h3> Vamos somar com clicks</h3>
    <div>
      <p>Clicked <strong>{@count}</strong> time(s)</p>
      <Button label="Click!" click="clicked" />
      <Button label="Reset" kind="alert-danger" click="reset" />
    </div>
    <h3> Testando os botões para fazer um navbar!!!</h3>
    <div class="has-addons">
  <Button label="Projeto" click="clicked" />
  <Button label="CENSO" >CENSO</Button>
  <Button label="Não" >Acessar</Button>
  </div>

  <h3 class="ui horizontal divider header">
  <i class="download icon"></i>
  Download de Arquivos
</h3>

  <i class="centered tag icon"></i>

  <div class="ui center aligned basic segment">
  <div class="ui left icon action input">
    <i class="search icon"></i>
    <input type="text" placeholder="Termo">
    <div class="ui blue submit button">Buscar</div>
  </div>
  <div class="ui horizontal divider">
    OU
  </div>
  <div class="ui teal labeled icon button">
    Criar Novo Documento
    <i class="add icon"></i>
  </div>
</div>
<h3 class="ui horizontal divider header">
  <i class="tag icon"></i>
  Buscando Midias
</h3>

<div class="ui rigth labeled left icon input">
  <i class="tags icon"></i>
  <input type="text" placeholder="Enter tags">
  <a class="ui tag label">
    Add Tag
  </a>
</div>
    """
  end

  def handle_event("clicked", _, socket) do
    {:noreply, update(socket, :count, &(&1 + 1))}
  end

  def handle_event("reset", _, socket) do
    {:noreply, assign(socket, :count, 0)}
  end
end
