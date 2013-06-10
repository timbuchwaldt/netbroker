defmodule Netbroker do
  use Application.Behaviour

  def start(_type, _state) do
    Netbroker.Supervisor.start_link([])
  end

end