defmodule PhxTesteWeb.PrincipalController do
  use PhxTesteWeb, :controller

  def index(conn, _params) do
    render(conn, "principal.html")
  end
end
