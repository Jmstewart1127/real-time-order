# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :real_order,
  ecto_repos: [RealOrder.Repo]

# Configures the endpoint
config :real_order, RealOrderWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qw62gIkgNd5PADuqLqQsurPdHx0LU+73y2Tqm0ehPJOTbwtP0X5AkMDnqeY+hjKR",
  render_errors: [view: RealOrderWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RealOrder.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
