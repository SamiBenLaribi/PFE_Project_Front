pipeline {
  agent any
   stages {
    stage("chekout") {
      steps {
        checkout scm
      }
    }
    stage("Test"){
      steps {
        sh "npm install"
        sh "npm run test"
      }
    }
    stage("Build"){
      steps {
        sh "npm run build"
      }
    }
    stage("build docker image"){
      steps {
        sh "docker build -t devops_project_front ."
      }
    }
    }
}
