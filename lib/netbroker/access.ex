defmodule Netbroker.Access do
  use GenEvent.Behaviour

  def init(_) do
    {:ok, []}
  end
  
  def handle_event({:activate, ip}, state) do
    {:ok, Enum.uniq([ip|state])}
  end

  def handle_event({:deactivate, ip}, state) do
    {:ok, state}
  end

  def handle_call(:display, state) do
    {:ok, state, state}
  end

end