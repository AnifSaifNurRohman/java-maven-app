pipeline {
    agent any
    
    tools {
        maven 'maven-3.9'
    }
    
    stages {
        stage('Build jar') {
            steps {
                bat 'mvn package'
            }
        }

        stage('Build Image') {
            steps {
                script {
                    echo "Building the Docker image..."
                    withCredentials([usernamePassword(credentialsId: 'docker-hub-credential', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
                        bat 'docker build -t anif0407/demo-app:jma-2.0 .'
                        bat "docker login -u %USER% -p %PASS%"
                        bat 'docker push anif0407/demo-app:jma-2.0'
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    echo "Deploying the application..."
                }
            }    
        }
    }
}
