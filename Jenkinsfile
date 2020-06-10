pipeline {
    agent {
        docker {
            image 'node:6-alpine' 
            args '-p 3000:3000'
            docker.build("${JOB_NAME}")
        }
    }
    stages {
        stage('Build') { 
            steps {
                withDockerContainer(args: "-u root", image: "${JOB_NAME}")
                sh 'npm install' 
            }
        }
    }
}
