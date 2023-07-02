defmodule TCache.Repo do
  use Ecto.Repo,
    otp_app: :t_cache,
    adapter: Ecto.Adapters.Postgres
end
