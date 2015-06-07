use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :hello_world, HelloWorld.Endpoint,
  secret_key_base: "GF+T4t5LbrbF8TuCKsuAKFwol2q+rQYGCBiLJHMx1umYZ0DxrOXbRZPbRr27CL45"

# Configure your database
config :hello_world, HelloWorld.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  size: 20 # The amount of database connections in the pool
