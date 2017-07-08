use Mix.Config

# Configure your database
config :phoenix_nanobox, PhoenixNanobox.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("DATA_DB_USER"),
  password: System.get_env("DATA_DB_PASS"),
  database: "phoenix_nanobox_test",
  hostname: System.get_env("DATA_DB_HOST"),
  pool: Ecto.Adapters.SQL.Sandbox
