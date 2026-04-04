pipeline {
    agent any
    
    tools {
        dockerTool 'docker'
    }
    
    stages {
        stage('Build') {
            steps {
                script {
                    // On récupère le chemin de l'outil installé par Jenkins
                    def dockerBin = tool name: 'docker', type: 'docker'
                    
                    // On exécute le build en utilisant ce chemin précis
                    withEnv(["PATH+DOCKER=${dockerBin}/bin"]) {
                        docker.build("mon-app-web:latest", ".")
                    }
                }
            }
        }
    }
}