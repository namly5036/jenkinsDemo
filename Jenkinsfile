node {
  stage("Build Image") {
    sh "docker image build -t jenkinsDemo:1.0 ."
  }
  stage("Deployment") {
    sh "docker run -d -p 8081:8081 --name jenkinsDemo jenkinsDemo:1.0"
  }
}
