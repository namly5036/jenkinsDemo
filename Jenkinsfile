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
                //git 'https://github.com/namly5036/jenkinsDemo.git'

                sh "chmod -R 777 $JENKINS_HOME/script.sh"
                sh "docker image build -t jenkinsdemo:1.0 ."
            }
        }
        stage('Run') {
            steps {
                sh "docker rm -f jenkinsdemo"
                sh "docker run -d -p 8081:8081 --name jenkinsdemo jenkinsdemo:1.0"
            }
        }
    }
}
