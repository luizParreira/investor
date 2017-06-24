# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :investor,
  ecto_repos: [Investor.Repo]

# Configures the endpoint
config :investor, Investor.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EiwqzZE9KZmCY8rfqB7JWQ7AAMuYgo61/gcOYXlhr+TqPkcmVDU2Rz5IGD48shpx",
  render_errors: [view: Investor.Web.ErrorView, accepts: ~w(json)],
  pubsub: [name: Investor.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
