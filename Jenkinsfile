pipeline {
    agent any

    environment {
        DOCKER_CREDENTIALS_ID = 'docker-hub-credentials'
        DOCKER_IMAGE_NAME = 'bamlakhiruy/pipeline-test'
        AWS_CREDENTIALS_ID = 'aws-credentials'
        AWS_REGION = 'us-west-2'
        EC2_INSTANCE_ID = 'i-xxxxxxxxxxxxxxxxx'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Bamlaku667/simple-node-js-react-npm-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${DOCKER_IMAGE_NAME}:latest")
                }
            }
        }

        // stage('Push to Docker Hub') {
        //     steps {
        //         withDockerRegistry([credentialsId: "${DOCKER_CREDENTIALS_ID}", url: 'https://index.docker.io/v1/']) {
        //             script {
        //                 docker.image("${DOCKER_IMAGE_NAME}:latest").push('latest')
        //             }
        //         }
        //     }
        // }

        // stage('Deploy to AWS') {
        //     steps {
        //         withAWS(credentials: "${AWS_CREDENTIALS_ID}", region: "${AWS_REGION}") {
        //             sh """
        //                 aws ec2 run-instances --instance-ids ${EC2_INSTANCE_ID}
        //             """
        //         }
        //     }
        // }

        stage ('Success stage') {
            steps {
                sh 'echo sucess'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
