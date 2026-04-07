pipeline {
    agent any
    
    tools {
        // "docker" doit correspondre exactement au "Name" que vous avez mis dans Jenkins Tools
        docker 'docker' 
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