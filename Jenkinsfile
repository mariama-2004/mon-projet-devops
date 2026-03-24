pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Récupération du code
                checkout scm
            }
        }
        stage('Construction Image') {
            steps {
                script {
                    // On utilise la commande interne de Jenkins pour Docker
                    // Cela évite l'erreur "docker introuvable"
                    docker.build("mon-app-web:latest")
                }
            }
        }
        stage('Verification') {
            steps {
                echo "L'image a été construite avec succès !"
            }
        }
    }
}