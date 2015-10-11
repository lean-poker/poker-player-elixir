use Mix.Config
  config :maru, LeanpokerElixir, http: [port: 3001]
  config :logger, :console,
    level: :info,
    format: "$date $time [$level] $metadata$message\n",
    metadata: [:user_id]
