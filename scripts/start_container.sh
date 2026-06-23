#!/bin/bash
set -e
IMAGE_TAG=$(cat ../day-14/simple-python-app/image_tag.txt)
# Pull the Docker  image from Docker Hub
docker pull jagandock/simple-python-app:$IMAGE_TAG
   
# Run the Docker image as a container 
docker run -d -p 5000:5000 jagandock/simple-python-app:$IMAGE_TAG
