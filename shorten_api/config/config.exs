# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :shorten_api,
  ecto_repos: [ShortenApi.Repo]

# Configures the endpoint
config :shorten_api, ShortenApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "I7Ow40UcaJyX4DSIdBcd824e4xn0qrKVv78HkPpTLQAhZ5r6+glfBmkApx3De+GX",
  render_errors: [view: ShortenApiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ShortenApi.PubSub,
  live_view: [signing_salt: "84iym9ZO"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
