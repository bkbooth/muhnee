# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :muhnee,
  ecto_repos: [Muhnee.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :muhnee, MuhneeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EobROAc1d+zhdXTEMDOkwbas4p3ESEANqRTVSvzxavEBtxDhQ3jipoGG8kP4D/kv",
  render_errors: [view: MuhneeWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Muhnee.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
