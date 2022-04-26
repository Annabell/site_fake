defmodule PhxTesteWeb.Principal do
  use Surface.LiveComponent

  def render(assigns) do
    ~F"""
    <Card>
      <Header>
        A simple card component
      </Header>
      O Projeto PESCARTE tem como sua principal finalidade a criação de uma
      rede social regional integrada por pescadores artesanais e por seus familiares,
      buscando, por meio de processos educativos, promover, fortalecer e
      aperfeiçoar a sua organização.
      
      This is the same Card component but now we're using
      <strong>typed slotables</strong> instead of <strong>templates</strong>.

      <Footer>
        <a href="https://www.facebook.com/peapescarte/" class="card-facebook">Facebook</a>
        <a href="#" class="card-instagram">Instagram</a>
      </Footer>
    </Card>
    """
  end
end
