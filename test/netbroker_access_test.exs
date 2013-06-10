Code.require_file "test_helper.exs", __DIR__

defmodule NetbrokerAccessTest do
  use ExUnit.Case, async: true

  test "first_login" do
    assert Netbroker.Access.handle_event({:activate, "172.16.0.1"}, []) == {:ok, ["172.16.0.1"]}
  end

  test "subsequent login" do
    assert Netbroker.Access.handle_event({:activate, "172.16.0.2"}, ["172.16.0.1"]) == {:ok, ["172.16.0.2", "172.16.0.1"]}
  end

  test "duplicate login" do
    assert Netbroker.Access.handle_event({:activate, "172.16.0.1"}, ["172.16.0.1"]) == {:ok, ["172.16.0.1"]}
  end

  test "state_info" do
    assert Netbroker.Access.handle_call(:display, ["172.16.0.1"]) == {:ok, ["172.16.0.1"],["172.16.0.1"]}
  end

end
