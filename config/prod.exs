use Mix.Config
  config :maru, LeanpokerElixir, http: [port: {:system, "PORT"}]

  #config :logger, :console,
    #level: :info,
    #format: "$date $time [$level] $metadata$message\n",
    #metadata: [:user_id]
