pipeline {
    agent any

    stages {
        stage('Nettoyage') {
            steps {
                // Supprime les anciennes images pour gagner de la place
                sh 'docker image prune -f'
            }
        }
        stage('Construction Image') {
            steps {
                // Utilise le point (.) pour dire que le Dockerfile est ici
                sh 'docker build -t mon-app-web:latest .'
            }
        }
        stage('Déploiement Test') {
            steps {
                echo "L'image mon-app-web a été créée avec succès sur votre Docker Windows !"
            }
        }
    }
}