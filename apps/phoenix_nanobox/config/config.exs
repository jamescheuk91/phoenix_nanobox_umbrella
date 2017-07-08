use Mix.Config

config :phoenix_nanobox, ecto_repos: [PhoenixNanobox.Repo]

import_config "#{Mix.env}.exs"
