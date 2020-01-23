pipeline {
  environment {
	  GIT_BRANCH = "master"
  }
  options {
        disableConcurrentBuilds()
        timestamps()
    }
  agent { label 'slave1' }
  stages {
    stage('Deploy to QA') {
	        agent { label 'slave1' }
	    if (env.BRANCH_NAME == "Develop"){
	            checkout([$class: 'GitSCM', branches: [[name: "*/${GIT_BRANCH}"]], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CleanBeforeCheckout']], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'TF_CRED', url: 'https://github.com/ravindra639/POC']]])			
				bat ' mvn clean'
            
	    }
    }
	stage("Deploy to Production") {
            agent { label 'slave1' }
		if (env.BRANCH_NAME == "master"){
                checkout([$class: 'GitSCM', branches: [[name: "*/${GIT_BRANCH}"]], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CleanBeforeCheckout']], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'TF_CRED', url: 'https://github.com/ravindra639/POC']]])			
				bat ' mvn clean '
		}
  }
}
}
