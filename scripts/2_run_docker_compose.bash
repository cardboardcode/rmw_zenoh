#!/usr/bin/env bash

CONTAINER_NAME="router_container"

# Check if the container is running
if docker ps --filter "name=$CONTAINER_NAME" --filter "status=running" | grep -q "$CONTAINER_NAME"; then
  echo "Container '$CONTAINER_NAME' is running. Stopping it..."
  docker stop "$CONTAINER_NAME"
  echo "Container '$CONTAINER_NAME' has been stopped."
else
  echo "Container '$CONTAINER_NAME' is not running."
fi

CONTAINER_NAME="talker_container"

# Check if the container is running
if docker ps --filter "name=$CONTAINER_NAME" --filter "status=running" | grep -q "$CONTAINER_NAME"; then
  echo "Container '$CONTAINER_NAME' is running. Stopping it..."
  docker stop "$CONTAINER_NAME"
  echo "Container '$CONTAINER_NAME' has been stopped."
else
  echo "Container '$CONTAINER_NAME' is not running."
fi

CONTAINER_NAME="listener_container"

# Check if the container is running
if docker ps --filter "name=$CONTAINER_NAME" --filter "status=running" | grep -q "$CONTAINER_NAME"; then
  echo "Container '$CONTAINER_NAME' is running. Stopping it..."
  docker stop "$CONTAINER_NAME"
  echo "Container '$CONTAINER_NAME' has been stopped."
else
  echo "Container '$CONTAINER_NAME' is not running."
fi

docker compose up
