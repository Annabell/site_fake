defmodule PhxTeste.Repo do
  use Ecto.Repo,
    otp_app: :phx_teste,
    adapter: Ecto.Adapters.Postgres
end
