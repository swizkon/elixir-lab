defmodule Typeonia.Repo do
  use Ecto.Repo,
    otp_app: :typeonia,
    adapter: Ecto.Adapters.Postgres
end
