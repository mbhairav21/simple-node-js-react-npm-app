pipeline {
    agent {
        docker {
            image 'node:6-alpine' 
            args '-p 3000:3000'
        }
    }
    stages {
        stage("Install dependencies") {
        // Run the container as `root` user
        // Note: you can run any official Docker image her
            sh "npm install"
        }
    }
        
    }
}
