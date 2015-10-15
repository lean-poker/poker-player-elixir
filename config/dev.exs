use Mix.Config
  config :maru, LeanpokerElixir, http: [port: 4242]
  config :logger, :console,
    level: :info,
    format: "$date $time [$level] $metadata$message\n",
    metadata: [:user_id]
