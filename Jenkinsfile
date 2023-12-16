pipeline {
    agent any
	
	tools { 
      maven 'MAVEN_HOME' 
      
    }
	
    stages {
        		
		stage('Build') {
            steps {
                sh 'mvn package'
            }
        }
		
		stage('Build Docker Image') {
            steps {
                script {
                  sh 'docker build -t deepakgole/dgdevops:latest .'
                }
            }
        }
		
        stage('Deploy Docker Image') {
            steps {
                script {
                 withCredentials([string(credentialsId: 'dffb01df-666b-48cb-9306-48517ce92f6d', variable: 'dockerhubpwd')]) {
                    sh 'docker login -u devopshint -p ${dockerhubpwd}'
                 }  
                 sh 'docker push deepakgole/dgdevops:latest'
                }
            }
        }
		
    }
}
