defmodule TutorialApp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      TutorialAppWeb.Telemetry,
      TutorialApp.Repo,
      {DNSCluster, query: Application.get_env(:tutorial_app, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: TutorialApp.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: TutorialApp.Finch},
      # Start a worker by calling: TutorialApp.Worker.start_link(arg)
      # {TutorialApp.Worker, arg},
      # Start to serve requests, typically the last entry
      TutorialAppWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TutorialApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TutorialAppWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
