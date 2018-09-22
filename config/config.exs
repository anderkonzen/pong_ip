# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :pong_ip, PongIpWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5ygqavSXAtX1SyLVX961QvNCbIZu/bGePw2y/Kh1uwOLrBU5ugVxY5Cstfb5xcXn",
  render_errors: [view: PongIpWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: PongIp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
