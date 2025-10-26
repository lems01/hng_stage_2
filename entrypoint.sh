#!/bin/sh
set -e

echo "--- Custom Entrypoint: Applying Nginx Configuration Template ---"

# Substitute environment variables in template
envsubst '$NGINX_PORT $BLUE_APP_PORT $GREEN_APP_PORT' \
  < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

echo "--- Nginx Configuration Applied ---"
