pipeline {
    agent any

    tools {
     
        maven "mavan3"

    }

    stages {
        stage('SCM-Checkout') {
            steps {
                
                 //git 'https://github.com/rayinianji/maven-web-application.git'
                 git 'https://github.com/MithunTechnologiesDevOps/maven-standalone-application.git'
                 //sh "mvn -Dmaven.test.failure.ignore=true clean package"
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

                sh ""
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

