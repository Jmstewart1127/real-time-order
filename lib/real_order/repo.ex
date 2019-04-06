defmodule RealOrder.Repo do
  use Ecto.Repo,
    otp_app: :real_order,
    adapter: Ecto.Adapters.Postgres
end
