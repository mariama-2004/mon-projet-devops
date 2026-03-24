pipeline {
    agent any
    
    tools {
        // Cela dit à Jenkins d'installer et d'utiliser Docker
        dockerTool 'ma-config-docker' 
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Construction Image') {
            steps {
                script {
                    // On utilise la syntaxe du plugin qui est plus fiable
                    docker.build("mon-app-web:latest")
                }
            }
        }
        stage('Verification') {
            steps {
                echo "Succès ! L'image est prête."
            }
        }
    }
}