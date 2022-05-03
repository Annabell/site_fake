defmodule PhxTesteWeb.Components.PerfilPesq do

  use Surface.Component

  import PhxTesteWeb.Gettext

# <!-- COMPLETAR E FAZER A DEFINIÇÃO DIREITO 1/5/2022 -->



def render(assigns) do
~F"""
<section class={"phx-hero", "alert-#{@color}": @color}>
<h2 > Vamos criar o perfil do pesquisador </h2>

<div class="ui form">
  <div class="field">
    <label>Bibliografia</label>
    <textarea></textarea>
  </div>
  <div class="field">
    <label>Breve Bibliografia</label>
    <textarea rows="2"></textarea>
  </div>
  <div class="field">
    <label>link do lattes</label>
    <input type="text" placeholder="Enter lattes">
  </div>
  <div class="field">
    <label>E-mail</label>
    <input type="email" placeholder="pescarte@uenf.br">
  </div>
</div>
</section>
"""
end
end
