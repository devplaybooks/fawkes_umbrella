# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :fawkes,
  ecto_repos: [Fawkes.Repo]

config :fawkes_web,
  ecto_repos: [Fawkes.Repo],
  generators: [context_app: :fawkes]

# Configures the endpoint
config :fawkes_web, FawkesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0hWLGZ5jcmoBzZazb3hCWuH3w92RExFZWxCcK+k8/FiKvQ60mllMXuz4WDxi+jPe",
  render_errors: [view: FawkesWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FawkesWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
