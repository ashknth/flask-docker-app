# Flask Docker App with CI/CD Pipeline


Table of Contents
Introduction
Technologies Used
Project Structure
Prerequisites
Getting Started
    1. Clone the Repository
    2. Build the Docker Image
    3. Run the Docker Container
Continuous Integration and Deployment
    GitHub Actions CI/CD Pipeline
    DockerHub Integration
How to Customize
License

## Introduction
This repository contains a simple Python Flask web application that is containerized using Docker. Additionally, it includes a GitHub Actions workflow to automatically build and push the Docker image to DockerHub when changes are pushed to the main branch.
The project can serve as a starting point for learning DevOps practices like continuous integration (CI) and continuous deployment (CD) with Docker and GitHub Actions.

## Technologies Used
Flask: A lightweight Python web framework for building web applications.
Docker: A platform to develop, ship, and run applications inside containers.
GitHub Actions: A CI/CD tool to automate build, test, and deployment pipelines.
DockerHub: A cloud-based registry for hosting and managing Docker images.

## Project Structure
```.
├── app.py                # Flask application
├── requirements.txt      # Python dependencies
├── Dockerfile            # Dockerfile for building the Docker image
├── .github/
│   └── workflows/
│       └── ci.yml        # GitHub Actions workflow for CI/CD pipeline
├── .gitignore            # Ignored files for Git
└── README.md             # Project documentation (this file)
```

## Prerequisites
Before you can run the project, ensure that you have the following tools installed on your system:
1. Docker - Install Docker
2. Git - Install Git
3. Python (if you want to run the app locally without Docker) - Install Python

##Getting Started
### 1. Clone the Repository
git clone https://github.com/yourusername/flask-docker-app.git
cd flask-docker-app

### 2. Build the Docker Image
To build the Docker image, run the following command from the project directory:
docker build -t flask-app .

### 3. Run the Docker Container
After the image is built, you can run the Docker container with:
docker run -p 5000:5000 flask-app
Now open your browser and go to http://localhost:5000. You should see the message 'Hello, World!'.

## Continuous Integration and Deployment
GitHub Actions CI/CD Pipeline
This project uses GitHub Actions to automate the building and deployment of the Docker image. A workflow file located at `.github/workflows/ci.yml` is set up to run every time code is pushed to the `main` branch.
#### Workflow Breakdown:
- Builds the Docker image for the Flask app.
- Pushes the Docker image to your DockerHub account.

## DockerHub Integration
To integrate this project with DockerHub, you'll need to:
1. Create an account on DockerHub.
2. Set up GitHub Secrets for DockerHub credentials:
   - DOCKER_USERNAME: Your DockerHub username.
   - DOCKER_PASSWORD: Your DockerHub password.
The workflow file (`ci.yml`) will automatically use these credentials to push the Docker image to DockerHub after every successful build.

## How to Customize
If you'd like to modify or extend this project, here are a few ideas:
- Change the Flask app: Modify `app.py` to change the response message or add new routes.
- Customize the Dockerfile: You can change the base image, add environment variables, or install additional packages.
- Extend the CI/CD pipeline: You can add additional steps to the GitHub Actions workflow, such as running tests or deploying the container to a cloud provider like AWS, Azure, or Google Cloud.

## License
This project is open source and available under the MIT License.
