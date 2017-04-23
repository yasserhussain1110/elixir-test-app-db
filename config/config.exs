# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixir_test_app,
  ecto_repos: [ElixirTestApp.Repo]

# Configures the endpoint
config :elixir_test_app, ElixirTestApp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4xR0UX2ln2mLP40RJB/brn094bhebjzAnW+CJmruJ34+98oItNcY3jGsNwe8Ith+",
  render_errors: [view: ElixirTestApp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirTestApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
