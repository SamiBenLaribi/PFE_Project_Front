pipeline {
  agent any
   stages {
    stage("chekout") {
      steps {
        checkout scm
      }
    }
        stages {
            stage('Git') {
                steps {
                   git branch: 'SBL_Devops_Project_Front', credentialsId: 'TokenGIT', url: 'https://github.com/SeddikEsprit/DevOps_Project_Front.git'
                }
            }

             stage('Build Img Docker') {
                        steps {
                          sh " echo jenkins | sudo -S docker build . -t frontdevops:front"
                        }
                    }

                       stage('Tag Img Docker') {
                        steps {
                          sh " echo jenkins | sudo -S docker tag frontdevops:front  samibenlaribi/frondevops:frontv1.1"
                        }
                    }

        }
    }
