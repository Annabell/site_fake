defmodule PhxTesteWeb.Components.DropdownLinha do
  use PhxTesteWeb, :component


  def dropdown_linha(assigns) do
    ~H"""
    <div class="dropdown-linha">
        <a class="ui dropdown item"><%= @name %><i class="dropdown icon"></i></a>
        <div class="dropdown-linha-content">
          <%= render_slot(@inner_block) %>
        </div>
      </div>
    """
  end
end
