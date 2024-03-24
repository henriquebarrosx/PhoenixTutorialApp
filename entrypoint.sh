#!/bin/bash

# Read about: https://medium.com/@techrally/phoenix-setting-up-env-variables-6557eb1370ee
echo "Loading env variables..."
source .env

# envsubst '${PORT} ${DOMAIN}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
# sed -e "s/\${PORT}/$PORT/g" -e "s/\${DOMAIN}/$DOMAIN/g" /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start Nginx
exec nginx -g 'daemon off;'

echo "Running server..."
/app/bin/server

