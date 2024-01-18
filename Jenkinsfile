pipeline {
  agent any
   stages {
    stage("chekout") {
      steps {
        checkout scm
      }
    stage("Test"){
      steps {
        sh "sudo apt install npm"
        sh "sudo npm install"
        sh "sudo npm run test"
      }
    stage("Build"){
      steps {
        sh "sudo npm run build"
      }
    stage("build docker image"){
      steps {
        sh "sudo docker build -t devops_project_front ."
      }
    }
