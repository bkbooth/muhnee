defmodule Muhnee.Repo do
  use Ecto.Repo,
    otp_app: :muhnee,
    adapter: Ecto.Adapters.Postgres
end
