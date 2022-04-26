defmodule PhxTesteWeb.Demo do
  use Surface.LiveView

  alias PhxTesteWeb.Components.Hero

  @impl true
  def mount(socket) do
    {:ok, allow_upload(socket, :photo, accept: ~w(.jpg .png), max_entries: 2)}
  end
end
