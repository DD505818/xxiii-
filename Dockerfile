# Use python:3.8-slim as the base image
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy the application code into the Docker image
COPY . /app

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Set the entrypoint to run the Flask application
ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:5000", "dashboard:app"]
