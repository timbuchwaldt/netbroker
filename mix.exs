defmodule InternetBroker.Mixfile do
  use Mix.Project

  def project do
    [ app: :internet_broker,
      version: "0.0.1",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [registered: [:netbroker],
      mod: {Netbroker, []}  ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    []
  end
  
end
