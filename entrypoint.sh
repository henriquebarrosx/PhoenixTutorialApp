#!/bin/bash

# Read about: https://medium.com/@techrally/phoenix-setting-up-env-variables-6557eb1370ee
echo "Loading env variables..."
source .env

echo "Running server..."
/app/bin/server

