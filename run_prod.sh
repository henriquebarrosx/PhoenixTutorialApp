#!/bin/bash

export $(cat .env.prod | grep -v '^#' | xargs)
docker compose up
