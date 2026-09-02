defmodule DailyJerma.Repo do
  use Ecto.Repo,
    otp_app: :daily_jerma,
    adapter: Ecto.Adapters.Postgres
end
