pipeline {
  agent { dockerfile true }
  stages {
    stage('Test') {
      steps {
        sh '''
          docker images
          docker ps -a          
        '''
      }
    }
  }
}