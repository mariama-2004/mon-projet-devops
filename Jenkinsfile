pipeline {
    agent any
    environment {
        // On dit à Jenkins d'envoyer ses ordres à l'adresse de ton Windows
        DOCKER_HOST = 'tcp://host.docker.internal:2375'
    }
    stages {
        stage('Nettoyage et Build') {
            steps {
                script {
                    // On utilise le plugin Docker pour piloter Docker Desktop
                    docker.withServer('tcp://host.docker.internal:2375') {
                        docker.build("mon-app-web:latest", ".")
                    }
                }
            }
        }
    }
}