defmodule PhxTesteWeb.PageControllerTest do
  use PhxTesteWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Criei o Primeiro Projeto!"
  end
end
