use Mix.Config

# Configure your database
config :phoenix_nanobox, PhoenixNanobox.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("DATA_DB_USER") || "postgres" ,
  password: System.get_env("DATA_DB_PASS") || "postgres",
  database: "phoenix_nanobox_dev",
  hostname: System.get_env("DATA_DB_HOST") || "localhost",
  pool_size: 10
