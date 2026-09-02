defmodule DailyJerma.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      DailyJermaWeb.Telemetry,
      DailyJerma.Repo,
      {DNSCluster, query: Application.get_env(:daily_jerma, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: DailyJerma.PubSub},
      # Start a worker by calling: DailyJerma.Worker.start_link(arg)
      # {DailyJerma.Worker, arg},
      # Start to serve requests, typically the last entry
      DailyJermaWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: DailyJerma.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    DailyJermaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
