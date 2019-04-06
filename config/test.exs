use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :real_order, RealOrderWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :real_order, RealOrder.Repo,
  username: "postgres",
  password: "postgres",
  database: "real_order_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
