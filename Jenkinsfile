pipeline {
    agent any
	
	tools { 
      maven 'MAVEN_HOME' 
      
    }
	
    stages {        		
			
		
		stage('Deploy To K8S') {
            steps {
                script {
					withKubeConfig(caCertificate: '', clusterName: '', contextName: '', credentialsId: 'K8SAzureConfigFile', namespace: '', restrictKubeConfigAccess: false, serverUrl: '') {
						try{
							sh "kubectl create -f devops.yaml"
						}catch(error){
							sh "kubectl apply -f devops.yaml"
						}
					}
                }
            }
        }
		
    }
}
