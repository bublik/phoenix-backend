use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :chat, ChatWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :debug, backends: [:console], compile_time_purge_level: :debug

# Configure your database
#config :chat, Chat.Repo,
#  adapter: Ecto.Adapters.Postgres,
#  username: "postgres",
#  password: "postgres",
#  database: "chat_test",
#  hostname: "localhost",
#  pool: Ecto.Adapters.SQL.Sandbox

config :chat, Chat.Repo,
  adapter: Ecto.Adapters.MySQL,
  pool: Ecto.Adapters.SQL.Sandbox,
#  migration_source: "schema_migrations",
#  migration_primary_key: [id: :version, type: :string],
  database: "tout_test",
  username: "root",
  password: "123456",
  hostname: "docker.for.mac.localhost",
  port: 3307

# mysql -u root -P 3307 -h docker.for.mac.localhost tout_test -p
