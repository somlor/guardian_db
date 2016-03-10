use Mix.Config

config :guardian, Guardian,
  issuer: "GuardianDb",
  secret_key: "woeirulkjosiujgwpeiojlkjw3prowiuefoskjd",
  serializer: Guardian.TestGuardianSerializer

config :guardian_db, GuardianDb,
  repo: GuardianDb.Test.Repo,
  delete_revoked: true

config :guardian_db, GuardianDb.Test.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "",
  hostname: "localhost",
  database: "guardian_db_test",
  pool: Ecto.Adapters.SQL.Sandbox
