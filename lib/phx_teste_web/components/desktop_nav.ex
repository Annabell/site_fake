defmodule PhxTesteWeb.Components.DesktopNav do
  use PhxTesteWeb, :component

  def render(assigns) do
    ~H"""
    <div class="computer only row">
      <a class="header item" href= "/">
      <img src={Routes.static_path(@conn, @logo)}  alt={@alt} />
      </a>
      <%= render_slot(@inner_block) %>
    </div>
    """
  end
end
