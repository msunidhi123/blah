pipeline {
    agent any
    
    environment {
        ACR_NAME = 'egCregistry'
        IMAGE_NAME = 'blahh'
        TAG = 'latest'
        DOCKER_REGISTRY_URL = "egcregistry.azurecr.io"
    }
    
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/msunidhi123/blah.git'  // Replace with your repository URL
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t $DOCKER_REGISTRY_URL/$IMAGE_NAME:$TAG ."
                }
            }
        }
        
        stage('Login to ACR') {
            steps {
                script {
                    sh "echo \\"$DOCKER_PASSWORD"\\ | docker login $DOCKER_REGISTRY_URL -u $DOCKER_USERNAME --password-stdin"
                }
            }
        }
        
        stage('Push Docker Image') {
            steps {
                script {
                    sh "docker push $DOCKER_REGISTRY_URL/$IMAGE_NAME:$TAG"
                }
            }
        }
    }
}
