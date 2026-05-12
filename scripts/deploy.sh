#!/bin/bash

set -e

APP_NAME="selfwise-app"
CONTAINER_NAME="selfwise-container"

echo "Stopping old container..."

docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

echo "Building image..."

docker build -t $APP_NAME .

echo "Running container..."

docker run -d \
--name $CONTAINER_NAME \
-p 8090:8090 \
$APP_NAME

echo "Deployment completed!"