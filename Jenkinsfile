pipeline {
  agent any

  environment {
    IMAGE = "myapp:${env.BUILD_NUMBER}"
  }

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Build Image') {
      steps {
        sh 'docker build -t $IMAGE .'
      }
    }

    stage('Stop & Remove Old Container') {
      steps {
        sh '''
          if docker ps -a --format '{{.Names}}' | grep -w myapp >/dev/null 2>&1; then
            docker rm -f myapp || true
          fi
        '''
      }
    }

    stage('Run Container') {
      steps {
        sh 'docker run -d --name myapp -p 3000:3000 $IMAGE'
      }
    }
  }

  post {
    always {
      sh 'docker images | head -n 20'
    }
  }
}
