# Task Management System

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

The CD pipeline deploys to a Kubernetes cluster using kind and performs a dummy DAST.

### Secrets Configuration

Configure the following GitHub Secrets:
- DOCKERHUB_USERNAME: Your DockerHub username
- DOCKERHUB_TOKEN: Your DockerHub access token