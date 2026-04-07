pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // On force l'utilisation du binaire Docker via un chemin relatif ou absolu si nécessaire
                    // Mais d'abord, on vérifie si Jenkins peut au moins voir le moteur
                    sh "docker build -t mon-app-web:latest ."
                }
            }
        }
    }
}