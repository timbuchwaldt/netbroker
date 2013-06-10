# Netbroker

Install: ```brew install elixir```, change to cloned dir, run ```mix test```

## Tryout

Run ```iex -S mix```

    :gen_event.notify(:em, {:activate, "172.16.0.2"})

    :gen_event.call(:em, Netbroker.Access, :display)