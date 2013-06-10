defmodule Netbroker.Supervisor do
  use Supervisor.Behaviour

  # A convenience to start the supervisor
  def start_link(_state) do
    :supervisor.start_link(__MODULE__, [])
  end

  # The callback invoked when the supervisor starts
  def init(_state) do
    :gen_event.start_link({:local,:em})
    :gen_event.add_handler(:em, Netbroker.Access, [])
    # :gen_event.notify(:em, {:activate, "172.16.0.3"})
    # :gen_event.call(:em,Netbroker.Access, :display)
    children = [ worker(Netbroker.Login, []) ]
    supervise children, strategy: :one_for_one
  end

end