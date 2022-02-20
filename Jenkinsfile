pipeline {
    agent any

    tools {
     
        maven "mavan3"

    }

    stages {
        stage('SCM-Checkout') {
            steps {
                
                  git 'https://github.com/rayinianji/maven-web-application.git'
                 
            }
        }


        stage('Building Code....')
        {
            steps{

                sh "mvn clean package"
            }

        }
        
        stage('Docker Image Build....')
        {
            steps {
                
                sh "docker build -t mywebapp ."
                
            }

        }

        stage ('Push image to Docker Registry')
        {
           steps{

             withCredentials([usernamePassword(credentialsId: 'DockerId', passwordVariable: 'dockerpwd', usernameVariable: 'dockerid')]) {
    
              {

               sh "docker login -u ${dockerid} -p ${dockerpwd}" 
  
              }

               sh"docker push mywebapp:5.0"              

           } 

        }
       }
        /*stage ('Deplyoing in to the tomcat server')
        {
            steps{

                sshagent(['TomDev-server']) {
                    sh "scp -o StrictHostKeyChecking=no target/maven-web-application.war ec2-user@15.206.81.204:/usr/share/tomcat9/webapps/"

                     }
            }

        }*/
    }

   

    }

