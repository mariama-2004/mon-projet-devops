pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // On utilise le moteur Docker de l'hôte
                    sh "docker build -t mon-app-web:latest ."
                }
            }
        }
    }
}