pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "docker image build -t namly5036/jenkinsdemo:1.0 ."
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
