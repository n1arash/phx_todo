# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_todo,
  ecto_repos: [PhxTodo.Repo]

# Configures the endpoint
config :phx_todo, PhxTodoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gGHRx5Qs9/4YeqNyGyA1bFtFLP0VhkgjqZ0O8qVbLhKZYIXqYCHW0KDDQzvwQzF5",
  render_errors: [view: PhxTodoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhxTodo.PubSub,
  live_view: [signing_salt: "QaPByj5r"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
