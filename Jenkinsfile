pipeline {
  environment {
	  branch = "master"
  }
  options {
        disableConcurrentBuilds()
        timestamps()
    }
  agent { label 'slave1' }
  stages {
    stage('Deploy to QA') {
	        agent { label 'slave1' }
	        when {
                branch "Develop"
            }
            steps {
	            checkout([$class: 'GitSCM', branches: [[name: "*/${branch}"]], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CleanBeforeCheckout']], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'TF_CRED', url: 'https://github.com/ravindra639/POC']]])			
				bat ' mvn clean'
            }
    }
	stage("Deploy to Production") {
            agent { label 'slave1' }
            when {
                branch "master"
            }
            steps {
                checkout([$class: 'GitSCM', branches: [[name: "*/${branch}"]], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CleanBeforeCheckout']], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'TF_CRED', url: 'https://github.com/ravindra639/POC']]])			
				bat ' mvn clean'
            }
  }
}
}
