pipeline {
    agent any

    stages {
        stage('Extraction') {
            steps {
                // Récupère le code depuis GitHub
                checkout scm
            }
        }
        stage('Construction sur l’Hôte') {
            steps {
                // On utilise 'bat' pour envoyer la commande à Windows directement
                bat 'docker build -t mon-app-web:latest .'
            }
        }
        stage('Verification') {
            steps {
                echo "L'image est maintenant visible dans Docker Desktop !"
            }
        }
    }
}