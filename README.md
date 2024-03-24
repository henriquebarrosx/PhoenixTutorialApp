## Deploying

- Generating a secret key.

```bash
mix phx.gen.secret
```

- Creating a `.env` file.

**NOTE: for development environment you only need to provide `POSTGRES_DB`, `POSTGRES_USER` and `POSTGRES_PASSWORD`.**

```bash
export PORT="4001"
export MIX_ENV="prod" # or "dev"
export SECRET_KEY_BASE="REALLY_LONG_SECRET"

export POSTGRES_DB="database_name"
export POSTGRES_USER="postgres"
export POSTGRES_PASSWORD="postgres"
export DATABASE_URL="ecto://postgres:postgres@db/database_name"
```

- Downloading dependencies

```bash
mix deps.get --only prod
```

- Compiling project

```bash
MIX_ENV=prod mix compile
```

- Compiling assets

```bash
MIX_ENV=prod mix assets.deploy
```

- Generating release

```bash
mix phx.gen.release
```

- Invoking release

```bash
MIX_ENV=prod mix release
```

- Running from docker

```bash
docker compose up -d
```
