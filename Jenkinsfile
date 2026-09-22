pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/Gella-Uday-kumar/devops-project-03-jenkins-cicd.git'
            }
        }

        stage('Backup') {
            steps {
                sh 'bash deployment/scripts/backup.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh 'bash deployment/scripts/deploy.sh'
            }
        }

        stage('Health Check') {
            steps {
                sh 'bash deployment/scripts/healthcheck.sh'
            }
        }
    }

    post {

        failure {
            sh 'bash deployment/scripts/rollback.sh'
        }

        success {
            echo 'Deployment Successful'
        }
    }
}