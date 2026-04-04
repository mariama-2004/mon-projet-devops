pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    docker.build("mon-app-web:latest", ".")
                }
            }
        }
    }
}