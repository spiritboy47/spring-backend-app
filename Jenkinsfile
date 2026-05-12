pipeline {
    agent any

    environment {
        APP_NAME = "selfwise-app"
        CONTAINER_NAME = "selfwise-container"
        IMAGE_NAME = "selfwise-image"
    }

    tools {
        maven 'Maven'
        jdk 'JDK21'
    }

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main',
                url: 'https://github.com/spiritboy47/spring-backend-app.git'
            }
        }

        stage('Build Application') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Prepare Scripts') {
            steps {
                sh 'chmod +x scripts/*.sh'
            }
        }

        stage('Deploy Container') {
            steps {
                sh './scripts/deploy.sh'
            }
        }

        stage('Health Check') {
            steps {
                sh './scripts/health-check.sh'
            }
        }
    }

    post {

        success {
            echo 'Pipeline executed successfully!'
        }

        failure {
            echo 'Pipeline failed!'
            sh './scripts/rollback.sh'
        }
    }
}