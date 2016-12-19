# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :monument,
  namespace: Mnt,
  ecto_repos: [Mnt.Repo]

# Configures the endpoint
config :monument, Mnt.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "S04h9aWBy3b7Ie30h+qUsCcqT6W1eIv9SCgqTNBH9YmrTwAwXlygmsTYqAV3gu99",
  render_errors: [view: Mnt.ErrorView, accepts: ~w(json)],
  pubsub: [name: Mnt.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
