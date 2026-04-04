pipeline {
    agent any
    
    tools {
        // On utilise le nouveau nom défini dans Tools
        dockerTool 'docker-client' 
    }
    
    stages {
        stage('Build') {
            steps {
                script {
                    // On récupère le chemin de l'outil avec le nouveau nom
                    def dockerBin = tool name: 'docker-client', type: 'docker'
                    
                    withEnv(["PATH+DOCKER=${dockerBin}/bin"]) {
                        docker.build("mon-app-web:latest", ".")
                    }
                }
            }
        }
    }
}