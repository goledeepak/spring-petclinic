pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                checkout changelog: false, poll: false, scm: scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: '2824af5e-62c7-416a-bbbb-dfaea94d55ba', url: 'https://github.com/spring-projects/spring-petclinic.git']])
            }
        }
    }
}
