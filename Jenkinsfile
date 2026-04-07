pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // On utilise directement la commande shell
                    // Jenkins utilisera le moteur Docker de votre Windows
                    sh "docker build -t mon-app-web:latest ."
                }
            }
        }
    }
}