defmodule Netbroker.Login do
  use GenServer.Behaviour

  def start_link do
    :gen_server.start_link({ :local, :login }, __MODULE__, [], [])
  end

  def init do
    {:ok}
  end
  
  def handle_call({:authenticate, "tim", "312"}, _from, _a) do
    {:reply, :ok, []}
  end

  def handle_call({:authenticate, _user, _password}, _from, _a) do
    {:reply, :nok, []}
  end

end