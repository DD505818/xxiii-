#!/bin/bash

# Install dependencies
pip install -r requirements.txt

# Run tests
pytest

# Deploy the application
echo "Deploying the application..."
# Add your deployment commands here

# Start the Flask application
echo "Starting the Flask application..."
nohup python dashboard.py &
