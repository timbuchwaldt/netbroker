# InternetBroker

** TODO: Add description **






{ :ok, pid } = :gen_event.start_link
:gen_event.add_handler(pid, Netbroker.Access, [])

:gen_event.notify(pid, {:activate, "172.16.0.2"})

:gen_event.call(pid,Netbroker.Access, :display)