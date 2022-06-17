defmodule PhxTesteWeb.Components.PerfilPesq do

  use Surface.Component

  import PhxTesteWeb.Gettext

  @doc "The color"
  prop color, :string, values!: ["danger", "info", "warning"]

# <!-- COMPLETAR E FAZER A DEFINIÇÃO DIREITO 24/5/2022 -->

def render(assigns) do
~F"""
<section class={"phx-hero", "alert-#{@color}": @color}>
<!-- <h2 > Vamos criar o perfil do pesquisador </h2>  -->

  <div class="ui divided grid">
    <div class="row">
      <div class="three wide column">
        <span class="bg-blue-100 rounded-full">
          <img width="150" height="150" src={PhxTesteWeb.Images.perfil} />
        </span>
        <div class="font-bold text-2xl"> <h2> Nome do pesquisador </h2> </div>
        <div class="font-semibold text-xl">  <h3> Tipo de participação </h3>  </div>
        <button class={PhxTesteWeb.Images.buttonClass}>
          <img src={PhxTesteWeb.Images.editarPerfil} width="30" height="30" class="mr-1"/>
          <span class={PhxTesteWeb.Images.buttonTextClass}> editar perfil </span>
        </button>
        <button class={PhxTesteWeb.Images.buttonClass}>
          <img src={PhxTesteWeb.Images.cadeado} width="30" height="30" class="mr-1"/>
          <span class={PhxTesteWeb.Images.buttonTextClass}> alterar senha </span>
        </button>
        <button class={PhxTesteWeb.Images.buttonCircular}>
          <img src={PhxTesteWeb.Images.cadeado} width="30" height="30" class="mr-1"/>
          <span class={PhxTesteWeb.Images.buttonTextClass}> Ver Mais </span>
        </button>
      </div>
    <div class="thirteen wide column">
      <div class="ui form">
        <div class="field">
          <label>Biografia</label>
          <textarea>

          </textarea>
        </div>
        <div class="field">
          <label>link do lattes</label>
          <input type="text" placeholder="Link do curriculo lattes">
        </div>
      </div>
    </div>
  </div>
  </div>

</section>
"""
end
end
