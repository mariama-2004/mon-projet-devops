pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Cette syntaxe utilise le plugin Docker Pipeline
                    // Elle est plus stable que la commande "sh" brute
                    docker.build("mon-app-web:latest", ".")
                }
            }
        }
    }
}