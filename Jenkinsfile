pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('sona09')
  }
  stages {
    stage('Build') {
      steps {
        sh './build.sh'
      }
    }
    stage('Login') {
      steps {
        sh './login.sh'
      }
    }
    stage('Push') {
      steps {
        sh './push.sh'
      }
    }
    stage('Deploy') {
      steps {
        sh './deploy.sh'
      }
    }

  }
  post {
    always {
      sh './logout.sh'
    }
  }
}
