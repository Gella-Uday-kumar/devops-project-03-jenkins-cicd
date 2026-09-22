pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        echo 'Building...'
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
  }
}
