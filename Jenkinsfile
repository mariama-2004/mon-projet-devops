pipeline {
    agent any
    environment {
        DOCKER_HOST = 'tcp://host.docker.internal:2375'
    }
    stages {
        stage('Build') {
            steps {
                script {
                    docker.withServer('tcp://host.docker.internal:2375') {
                        docker.build("mon-app-web:latest", ".")
                    }
                }
            }
        }
    }
}
