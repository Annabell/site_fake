defmodule PhxTesteWeb.Components.RelatoMensal do

  use Surface.Component

  import PhxTesteWeb.Gettext

  @doc "The color"
  prop color, :string, values!: ["danger", "info", "warning"]

  @doc "The name"
  prop name, :string, default: "Atual"

# <!-- COMPLETAR E FAZER A DEFINIÇÃO DIREITO 25/5/2022 -->

def render(assigns) do
~F"""
<section class={"phx-hero", "alert-#{@color}": @color}>
<h2 > RELATÓRIO MENSAL {@name} </h2>
<!--   -->
  <form class="ui form">
  <ul id="progressbar">
      <li class="active">Dados Pessoais</li>
      <li>Atividades Desenvolvidas</li>
      <li>Planejamento de Estudos ou de Pesquisa</li>
      <li>Evidências (fotografias, print de tela...)</li>
    </ul>

  <!-- <h4 class="ui dividing header"></h4> -->
  <div class="field">
    <h2> Dados Pessoais </h2>
    <div class="two fields">
      <div class="field">
        <input type="text" name="shipping[first-name]" placeholder="Nome do Pesquisador">
      </div>
      <div class="field">
        <input type="text" name="shipping[date]" placeholder="Data Relatório">
      </div>
    </div>
    <div class="field">
      <input type="text" name="shipping[linha]" placeholder="Linha de Pesquisa">
    </div>




    <div class="two fields">
      <div class="field">
        <select class="ui fluid dropdown">
          <option value="">Tipo de Bolsa </option>
          <option value="IC">Iniciação Científica</option>
          <option value="PM">Mestrado</option>
          <option value="PD">Doutorado</option>
          <option value="PQ">Pesquisador</option>
          <option value="CG">Coordenador Geral</option>
        </select>


      </div>
      <div class="field">
        <input type="text" name="shipping[coordenador]" placeholder="Geraldo Márcio Timóteo">
      </div>
    </div>
  </div>

  <div class="ui right icon input">
  <i class="dropdown icon"></i>
    <input type="text" name="shipping[linha]" placeholder="Linha de Pesquisa Escolha">
    <select class="ui fluid dropdown">
          <option value="">Linha de Pesquisa</option>
          <option value="L1">Linha 1: xxxxx</option>
          <option value="L2">Linha 2: xxxxx</option>
          <option value="L3">Linha 3: xxxxx</option>
          <option value="L17">Linha 17: xxxxx</option>
          <option value="L18">Linha 18: Plataforma Digital </option>
        </select>

  </div>
  <h2> Atividades Desenvolvidas </h2>


  <h2> Planejamento de Estudos ou de Pesquisa </h2>
  <div class="field">
    <label>Ações de planejamento e construção da pesquisa:</label>
      <textarea>
      </textarea>
  </div>
  <div class="field">
    <label>Participação em grupo de estudos:</label>
      <textarea>
      </textarea>
  </div>
  <div class="field">
    <label>Reunião de orientação:</label>
      <textarea>
      </textarea>
  </div>
  <div class="field">
    <label>Ações de pesquisa de campo, análise de dados e construção audiovisual:</label>
      <textarea>
      </textarea>
  </div>
  <div class="field">
    <label>Participação em treinamentos e cursos PEA Pescarte:</label>
      <textarea>
      </textarea>
  </div>
  <div class="field">
    <label>Publicação:</label>
      <textarea>
      </textarea>
  </div>

<!-- Fazer um componente que seja textarea para chamar aqui.-->


  <h2>Evidências (fotografias, print de tela...)</h2>

  <PhxTesteWeb.Components.DropdownLinha.render name="Tipo de Bolsa">
      <option value="">Tipo de Bolsa</option>
      <option value="IC">Iniciação Científica</option>
  </PhxTesteWeb.Components.DropdownLinha.render>

  <button class="ui button">Submeter</button>

  <input type="submit" name="submit" class="submit action-button" value="Submeter" />
  </form>



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
      </div>
    </div>
  </div>

</section>
"""
end
end
