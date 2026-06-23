#!/bin/bash
set -e

DEPLOY_DIR=$(dirname "$(readlink -f "$0")")/..

IMAGE_TAG=$(cat "$DEPLOY_DIR/image_tag.txt")

# Pull the Docker  image from Docker Hub
docker pull jagandock/simple-python-app:$IMAGE_TAG
   
# Run the Docker image as a container 
docker run -d -p 5000:5000 jagandock/simple-python-app:$IMAGE_TAG
