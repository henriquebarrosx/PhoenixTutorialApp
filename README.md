## Deploying

- Generating a secret key.

```bash
mix phx.gen.secret
```

- Creating a `.env` file.

**NOTE: for development environment you only need to provide `POSTGRES_DB`, `POSTGRES_USER` and `POSTGRES_PASSWORD`.**

```bash

export MIX_ENV="prod"
export PORT="4000"
export PHX_HOST="example.com"
export SECRET_KEY_BASE="REALLY_LONG_SECRET"
export POSTGRES_DB="tutorial_app_prod"
export POSTGRES_USER="postgres"
export POSTGRES_PASSWORD="postgres"
export DATABASE_URL="ecto://postgres:postgres@db/tutorial_app_prod"
```

- Running from docker

```bash
docker compose up -d
```
