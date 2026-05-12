# Spring Boot CI/CD Pipeline Project

## Overview

This project demonstrates a complete CI/CD pipeline implementation for a Spring Boot application using Jenkins, Maven, Docker, and GitHub.

The pipeline automates:

- Source code checkout
- Maven build process
- Automated test execution
- Docker image creation
- Application deployment
- Health check validation
- Rollback handling

---

## Technologies Used

| Tool | Purpose |
|------|----------|
| Spring Boot | Backend Application |
| Maven | Build Automation |
| Jenkins | CI/CD Pipeline |
| Docker | Containerization |
| GitHub | Source Control |
| Java 21 | Runtime Environment |
| Ubuntu Linux | Deployment Server |

---

## Repository URL

https://github.com/spiritboy47/spring-backend-app

---

## Project Structure

```text
spring-backend-app/
│
├── scripts/
│   ├── deploy.sh
│   ├── health-check.sh
│   └── rollback.sh
│
├── src/
├── Dockerfile
├── Jenkinsfile
├── .gitignore
├── pom.xml
└── README.md
```

---

## CI/CD Pipeline Flow

```text
Developer Pushes Code
        ↓
GitHub Repository
        ↓
Jenkins Pipeline Trigger
        ↓
Build Stage
        ↓
Test Stage
        ↓
Docker Image Build
        ↓
Container Deployment
        ↓
Health Check
        ↓
Success / Rollback
```

---

## Jenkins Pipeline Stages

1. Checkout Code
2. Build Application
3. Run Tests
4. Build Docker Image
5. Prepare Scripts
6. Deploy Container
7. Health Check
8. Rollback on Failure

---

## Build Application

```bash
mvn clean package
```

---

## Run Application Locally

```bash
java -jar target/selfwise.jar
```

---

## Docker Build

```bash
docker build -t selfwise-image .
```

---

## Docker Run

```bash
docker run -d -p 8080:8080 --name selfwise-container selfwise-image
```

---

## Health Check Endpoint

```text
http://localhost:8080/actuator/health
```

---

## Deployment Scripts

### deploy.sh
Handles:
- Docker image deployment
- Container restart
- Application startup

### health-check.sh
Handles:
- Application availability check
- Deployment validation

### rollback.sh
Handles:
- Rollback process in case of deployment failure
  
---

## Author

Nikhil Kumar
