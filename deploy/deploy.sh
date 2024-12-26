#!/bin/bash

# Deploy the application
echo "Deploying the application..."
# Add your deployment commands here

# Build the Docker image
docker build -t gcr.io/ddgpt/xxiii-backend .

# Tag the Docker image
docker tag $(docker images -q gcr.io/ddgpt/xxiii-backend) gcr.io/ddgpt/xxiii-backend

# Start the Flask application
echo "Starting the Flask application..."
nohup python dashboard.py &
