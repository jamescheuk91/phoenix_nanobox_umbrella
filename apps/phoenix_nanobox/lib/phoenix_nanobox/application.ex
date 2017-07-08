defmodule PhoenixNanobox.Application do
  @moduledoc """
  The PhoenixNanobox Application Service.

  The phoenix_nanobox system business domain lives in this application.

  Exposes API to clients such as the `PhoenixNanobox.Web` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(PhoenixNanobox.Repo, []),
    ], strategy: :one_for_one, name: PhoenixNanobox.Supervisor)
  end
end
