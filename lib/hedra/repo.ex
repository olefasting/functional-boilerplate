defmodule Hedra.Repo do
  use Ecto.Repo,
    otp_app: :hedra,
    adapter: Ecto.Adapters.Postgres
end
