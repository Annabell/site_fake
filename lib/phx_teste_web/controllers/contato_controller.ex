defmodule PhxTesteWeb.ContatoController do
  use PhxTesteWeb, :controller

  def mostrar(conn, _options) do
    render(conn, "mostrar.html")
  end
end
