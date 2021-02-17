import Config

config :lovelace,
  ecto_repos: [Lovelace.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :lovelace, LovelaceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+41x5h8Xbn3ilu0YZ5UShcHI2/qhY3JGZpT8ockkzdkTHahMJe177aE2dcyQ5CAn",
  render_errors: [view: LovelaceWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Lovelace.PubSub,
  live_view: [signing_salt: "XP1985o+"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :tesla, adapter: Tesla.Adapter.Hackney

config :lovelace, pubsub_channel: Lovelace.PubSub

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
