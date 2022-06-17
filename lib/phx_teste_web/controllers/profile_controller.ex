defmodule PhxTesteWeb.ProfileController do
  use PhxTesteWeb, :controller

  def perfil(conn, _params) do
    render(conn, "profile.html")
  end
end
