pipeline {
    agent {
        docker {
            image 'docker:latest'
            // On partage le socket pour que ce client parle à votre Docker Windows
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t mon-app-web:latest ."
                }
            }
        }
    }
}