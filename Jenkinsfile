pipeline {
    agent {
        docker {
            image 'node:6-alpine' 
            args '-p 3000:3000'
            docker.build("${JOB_NAME}")
        }
    }
    stages {
        steps("Install dependencies") {
        // Run the container as `root` user
        // Note: you can run any official Docker image here
        withDockerContainer(args: "-u root", image: "${JOB_NAME}") {
            sh "npm install"
        }
    }
        
    }
}
