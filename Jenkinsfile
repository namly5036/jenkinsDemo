pipeline {
    agent any

    //tools {
        // Install the Maven version configured as "M3" and add it to the path.
        //maven "M3"
    //}

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/namly5036/jenkinsDemo.git'

                sh "docker image build -t jenkinsDemo:1.0 ."
            }
        },
          stage('Run') {
            steps {
                sh "docker run -d -p 8081:8081 --name jenkinsDemo jenkinsDemo:1.0"
            }
        }
    }
}

