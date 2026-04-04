pipeline {
    agent any
    
    tools {
        // Cela dit à Jenkins d'ajouter l'outil "docker" au PATH
        dockerTool 'docker' 
    }
    
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