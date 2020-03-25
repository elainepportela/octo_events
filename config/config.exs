# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :octo_events,
  ecto_repos: [OctoEvents.Repo]

# Configures the endpoint
config :octo_events, OctoEventsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "T2W66GaHKy1WbWVMXLx6GlRqHAFbtWLJXlPIT93ZFejRmjwi/vEEX7G3x1drt3d/",
  render_errors: [view: OctoEventsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: OctoEvents.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "SGwEx+dP"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
