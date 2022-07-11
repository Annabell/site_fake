defmodule PhxTesteWeb.Components.PerfilPesq do
  use Surface.Component

  import PhxTesteWeb.Gettext

  @doc "The color"
  prop color, :string, values!: ["danger", "info", "warning"]

# <!-- COMPLETAR E FAZER A DEFINIÇÃO DIREITO 11/7/2022 -->

def render(assigns) do
~F"""
<div class="xl:ml-20 xl:w-5/12 lg:w-5/12 md:w-8/12 mb-12 md:mb-0">
  <form>
  <!-- <div class="justify-center">
  <span> <img src={PhxTesteWeb.Images.perfil} /> </span>
  </div> -->
  <div class="divider"> Dados Pessoais </div>
  <div class="text-center lg:text-left">
     <div class="user"> Nome do Usuário </div>
     <div class="tipoparti">Tipo de Participação</div>
  </div>
  <div class="divider"> Edições </div>
    <div class="p-3 text-center lg:text-left">
      <button type="button"
           class="inline-block rounded-box px-7 py-3 bg-blue-600 text-white font-medium text-sm leading-snug uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out">
           Editar Perfil
      </button>
    </div>
    <button class={PhxTesteWeb.Images.buttonClass}>
         <img src={PhxTesteWeb.Images.editarPerfil} width="22" height="25"/>
         <span class={PhxTesteWeb.Images.buttonTextClass}> Editar Perfil </span>
       </button>

    <div class="p-3 text-center lg:text-left">
      <button type="button"
           class="inline-block px-7 py-3 bg-blue-600 text-white font-medium text-sm leading-snug uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out">
           Atualizar Senha
      </button>
    </div>
    <button class={PhxTesteWeb.Images.buttonClass}>
         <img src={PhxTesteWeb.Images.cadeado} width="19" height="25"/>
         <span class={PhxTesteWeb.Images.buttonTextClass}> Alterar Senha </span>
    </button>
    <div class="p-3 text-center lg:text-left">
      <button type="button"
           class="inline-block px-7 py-3 bg-blue-600 text-white font-medium text-sm leading-snug uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out">
           Outras Ações
      </button>
    </div>
    <button class={PhxTesteWeb.Images.buttonCircular}>
         <img src={PhxTesteWeb.Images.cadeado} width="19" height="25"/>
         <span class={PhxTesteWeb.Images.buttonTextClass}> Ver Mais </span>
       </button>


    <div class="divider"> Currículo </div>

    <!-- Biografia
    <div class="grid flex-grow h-256 card bg-base-300 rounded-box place-items-center">
     <textarea class="textarea textarea-info" placeholder="Biografia"></textarea>
     <textarea class="textarea textarea-info" placeholder="Link Curriculo"></textarea>
    </div>     -->


    <div class="p-9 rounded-lg flex justify-left  max-w-xl">
      <div class="mb-6 xl:w-96">
    <label for="exampleFormControlInput1" class="form-label inline-block mb-2 text-gray-700">
      Link do Lattes</label>
    <input type="text"
      class="form-control  block  w-full px-3  py-1.5
        text-base  font-normal  text-gray-700 bg-white bg-clip-padding
        border border-solid border-gray-300  rounded  transition
        ease-in-out  m-0  focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none"
      id="exampleFormControlInput1"
      placeholder="Currículo"
    />
  </div>
</div>
    <div class="p-9 rounded-lg flex justify-left  w-full">
      <div class="mb-6 xl:w-96">
         <label for="exampleFormControlTextarea1" class="form-label inline-block mb-2 text-gray-700">
           Biografia</label>
           <textarea
           class="form-control block w-full
             px-3
             py-1.5
             text-base
             font-normal
             text-gray-700
             bg-white bg-clip-padding
             border border-solid border-gray-300
             rounded   transition   ease-in-out   m-0
             focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none"
           id="exampleFormControlTextarea1"
           rows="6"
           placeholder="escreva sua biografia"
         ></textarea>
      </div>
    </div>
  </form>
</div>
"""
end
end
