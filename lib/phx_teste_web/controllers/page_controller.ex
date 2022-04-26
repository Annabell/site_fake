defmodule PhxTesteWeb.PageController do
  use PhxTesteWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
