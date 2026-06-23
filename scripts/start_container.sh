#!/bin/bash
set -e

echo "Current directory:"
pwd

echo "Files in current directory:"
ls -la

echo "Searching for image_tag.txt:"
find /opt/codedeploy-agent -name image_tag.txt 2>/dev/null

IMAGE_TAG=$(cat image_tag.txt)
# Pull the Docker  image from Docker Hub
docker pull jagandock/simple-python-app:$IMAGE_TAG
   
# Run the Docker image as a container 
docker run -d -p 5000:5000 jagandock/simple-python-app:$IMAGE_TAG
