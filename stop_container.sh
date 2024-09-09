#!/bin/bash

# Get the ID of the most recently started running container
containerID=$(docker ps -l -q)

# Check if there is a running container
if [ -z "$containerID" ]; then
  echo "No running containers found."
  exit 1
fi

# Stop the most recent container
echo "Stopping container $containerID..."
docker stop $containerID

# Remove the container
echo "Removing container $containerID..."
docker rm $containerID

echo "Container $containerID stopped and removed."
