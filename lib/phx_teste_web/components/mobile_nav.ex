defmodule PhxTesteWeb.Components.MobileNav do
  use PhxTesteWeb, :component

  def render(assigns) do
    ~H"""
    <div class="tablet mobile only row">
      <a class="header item" href= "/">
        <img src={Routes.static_path(@conn, @logo)}  @alt />
      </a>
      <%= render_slot(@inner_block) %>
    </div>
    """
  end
end
