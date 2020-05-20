#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
sudo dockerpath=krravindra/project4

# Step 2:  
# Authenticate & tag
export DOCKER_ID_USER="krravindra"
sudo docker login
sudo docker tag udacityproj $DOCKER_ID_USER/project4
sudo docker push $DOCKER_ID_USER/project4

# Step 3:
# Push image to a docker repository
sudo docker push krravindra/project4