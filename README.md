# Task Management System

[![CI](https://github.com/ShivamGoelOSS/TaskManagementSystem/actions/workflows/ci.yml/badge.svg)](https://github.com/ShivamGoelOSS/TaskManagementSystem/actions/workflows/ci.yml)
[![CD](https://github.com/ShivamGoelOSS/TaskManagementSystem/actions/workflows/cd.yml/badge.svg)](https://github.com/ShivamGoelOSS/TaskManagementSystem/actions/workflows/cd.yml)

A simple Spring Boot application for managing tasks.

## How to run locally

1. Ensure you have Java 11 and Maven installed.

2. Clone the repository.

3. Run `mvn clean install` to build the project.

4. Run `mvn spring-boot:run` to start the application.

5. The application will be available at http://localhost:8080.

## API Endpoints

- GET /api/tasks - Get all tasks
- GET /api/tasks/{id} - Get task by ID
- POST /api/tasks - Create a new task
- PUT /api/tasks/{id} - Update a task
- DELETE /api/tasks/{id} - Delete a task

## Docker

To build and run with Docker:

1. Build the JAR: `mvn clean package`
2. Build the image: `docker build -t taskmanager .`
3. Run the container: `docker run -p 8080:8080 taskmanager`

## CI/CD

This project includes GitHub Actions workflows for CI and CD.

### CI Pipeline

The CI pipeline performs:
- Code checkout
- Java setup
- Maven caching
- Linting with Checkstyle
- SAST with CodeQL
- SCA with OWASP Dependency Check
- Unit tests
- Build
- Docker image build
- Image scanning with Trivy
- Runtime testing
- Push to DockerHub (on main/master branch)

### CD Pipeline

The CD pipeline deploys to an AWS EKS cluster and performs a dummy DAST.

**Note:** Ensure your EKS cluster is already created and configured. The pipeline assumes the cluster exists and uses the provided credentials to update kubeconfig.

### Secrets Configuration

Configure the following GitHub Secrets:
- DOCKERHUB_USERNAME: Your DockerHub username
- DOCKERHUB_TOKEN: Your DockerHub access token
- AWS_ACCESS_KEY_ID: Your AWS access key ID
- AWS_SECRET_ACCESS_KEY: Your AWS secret access key
- AWS_REGION: Your AWS region (optional, defaults to us-east-1)
- EKS_CLUSTER_NAME: Your EKS cluster name (optional, defaults to my-cluster)