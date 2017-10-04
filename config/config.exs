# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix13,
  ecto_repos: [Phoenix13.Repo]

# Configures the endpoint
config :phoenix13, Phoenix13Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QY+04RCuQqGqmutEfnSszU7GCR+KsXR3Mcy8KIOmszPsOGibf7TmFgCf8LcU+w9f",
  render_errors: [view: Phoenix13Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenix13.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
