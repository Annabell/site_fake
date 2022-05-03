defmodule PhxTesteWeb.CooperativaController do
  use PhxTesteWeb, :controller

  def index(conn, _options) do
    render(conn, "index.html")
  end
end
