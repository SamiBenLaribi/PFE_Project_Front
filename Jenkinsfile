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

                        stage('Push Img Docker') {
                        steps {
                          sh " echo jenkins | sudo -S docker push samibenlaribi/frondevops:frontv1.1"
                        }
                    }
             stage ('download and connect to AKS Cluster') {
                steps {
    		        echo 'connection to AKS'
                        sh 'sudo -S az login -u sami.benlaribi@esprit.tn -p RQxMT6nqYEKU$$$'
                        sh ' sudo -S az aks install-cli'
                        sh 'sudo -S az aks get-credentials --resource-group prod-rg --name terraform-aks'
                    echo 'connected'
                }
           }
           stage ('deploy image to AKS'){
                steps{
                        sh 'sudo -S kubectl apply -f deployment.yaml '
                }
           }

        }
    }

    }
}
