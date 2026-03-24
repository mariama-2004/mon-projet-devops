pipeline {
    agent any

    stages {
        stage('Extraction du code') {
            steps {
                checkout scm
            }
        }
        stage('Construction Image') {
            steps {
                // On utilise 'sh' pour Linux ou 'bat' pour Windows
                // Jenkins ici tourne sous Linux (Docker), donc on utilise 'sh'
                sh 'docker build -t mon-app-web:latest .'
            }
        }
        stage('Verification') {
            steps {
                sh 'docker images | grep mon-app-web'
            }
        }
    }
}