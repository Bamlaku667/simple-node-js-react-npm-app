pipeline {
    agent any
    tools {
        nodejs 'nodejs' // This name should match the NodeJS tool name in Jenkins configuration
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'node --version'
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
        stage('Deliver') {
            steps {
                sh './jenkins/scripts/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './jenkins/scripts/kill.sh'
            }
        }
    }
}
