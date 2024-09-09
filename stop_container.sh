

#containerID = `docker ps | awk -F "" '{Print $1}'`
#docker rm -f $containerID 

#!/bin/bash

# Get the container ID of the most recently started container
containerID=$(docker ps -l -q)

# Stop and remove the most recent container
docker rm -f $containerID