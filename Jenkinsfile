pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Jenkins récupère le code depuis GitHub
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Jenkins construit l'image Docker
                    // Note : On utilise 'docker' directement car Jenkins tourne dans Docker sur votre Windows
                    sh "docker build -t mon-app-web:latest ."
                }
            }
        }
        stage('Verification') {
            steps {
                // Vérifie que l'image existe bien
                sh "docker images | grep mon-app-web"
            }
        }
    }
}