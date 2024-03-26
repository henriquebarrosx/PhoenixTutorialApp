import Config

config :hello_phoenix, HelloPhoenix.Endpoint,
  http: [port: System.get_env("PORT") || 4001],
  url: [host: System.get_env("HOST"), port: System.get_env("PORT")],
  cache_static_manifest: "priv/static/manifest.json"

# Note we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix assets.deploy` task,
# which you should run after static files are built and
# before starting your production server.
config :tutorial_app, TutorialAppWeb.Endpoint,
  cache_static_manifest: "priv/static/cache_manifest.json"

# Configures Swoosh API Client
config :swoosh, api_client: Swoosh.ApiClient.Finch, finch_name: TutorialApp.Finch

# Disable Swoosh Local Memory Storage
config :swoosh, local: false

# Do not print debug messages in production
config :logger, level: :info

# Runtime production configuration, including reading
# of environment variables, is done on config/runtime.exs.
