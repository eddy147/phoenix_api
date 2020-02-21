# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_api,
  ecto_repos: [PhoenixApi.Repo]

# Configures the endpoint
config :phoenix_api, PhoenixApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hvH4Ygbmp4PJFmO38DGKV/xURYQu06LKhsFcA1WjXKikjqs6S1+re549tqZTSgOY",
  render_errors: [view: PhoenixApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhoenixApi.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "hZLa4Kvj"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
