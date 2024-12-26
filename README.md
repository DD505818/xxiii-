Project overview and documentation.

## Deployment Instructions

### Running the Deployment Script

To deploy the application, you can use the provided deployment script. Follow these steps:

1. Ensure you have all the necessary dependencies installed. You can install them using:
   ```bash
   pip install -r requirements.txt
   ```

2. Run the deployment script:
   ```bash
   bash deploy/deploy.sh
   ```

3. The deployment script will also start the Flask application:
   ```bash
   nohup python dashboard.py &
   ```

### Building and Tagging the Docker Image

To build and tag the Docker image for the backend, follow these steps:

1. Ensure you have Docker installed on your machine.

2. Build the Docker image:
   ```bash
   docker build -t gcr.io/ddgpt/xxiii-backend .
   ```

3. Tag the Docker image:
   ```bash
   docker tag <image_id> gcr.io/ddgpt/xxiii-backend
   ```

### Configuring the CI/CD Pipeline

To set up the CI/CD pipeline using GitHub Actions, follow these steps:

1. Ensure you have a `.github/workflows` directory in your repository.

2. Add the `deploy.yml` file to the `.github/workflows` directory. This file contains the configuration for the deployment pipeline.

3. The pipeline will automatically run on every push to the `main` branch. It will install dependencies, run tests, and deploy the application.

### Automatic Deployment

The application is now deployed automatically on every push to the `main` branch. This ensures that the latest changes are always live.

### GitHub Actions Workflow

The GitHub Actions workflow file is located at `.github/workflows/deploy.yml`. This file contains the configuration for the deployment pipeline, including steps to install dependencies, run tests, build and tag the Docker image, and deploy the application.
