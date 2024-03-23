#!/bin/bash

export $(cat .env.dev | grep -v '^#' | xargs)
docker compose up
