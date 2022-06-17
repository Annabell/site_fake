defmodule PhxTesteWeb.Components.FooterNav do
  use PhxTesteWeb, :component

  def render(assigns) do
    ~H"""
    <footer class="footer">
      <div class="phx-logo">
        <img href="/" src={Routes.static_path(@conn,  @logo)} alt={@alt} >
      </div>
    </footer>
    """
  end
end
