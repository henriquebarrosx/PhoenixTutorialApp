#!/bin/bash

# Read about: https://medium.com/@techrally/phoenix-setting-up-env-variables-6557eb1370ee
echo "Loading env variables..."
source .env

# envsubst '${PORT} ${DOMAIN}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
# sed -e "s/\${PORT}/$PORT/g" -e "s/\${DOMAIN}/$DOMAIN/g" /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start Nginx
echo "Starting NGINX..."
exec nginx -g 'daemon off;'

echo "Starting server..."
/app/bin/server

