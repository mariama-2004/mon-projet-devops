pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // On lance la commande de build directement dans le terminal du conteneur
                    sh "docker build -t mon-app-web:latest ."
                }
            }
        }
    }
}