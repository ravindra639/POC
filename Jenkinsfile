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
	        //agent { label 'slave1' }
	        when {
                expression { GIT_BRANCH == Develop }
            }
            steps {
	           // checkout([$class: 'GitSCM', branches: [[name: "*/${TFS_BRANCH}"]], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CleanBeforeCheckout']], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'TF_CRED', url: 'https://github.com/ravindra639/POC']]])			
				bat ' mvn clean'
            }
    }
	stage("Deploy to Production") {
            //agent { label 'slave1' }
            when {
                expression { GIT_BRANCH == master }
            }
            steps {
                //checkout([$class: 'GitSCM', branches: [[name: "*/${TFS_BRANCH}"]], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CleanBeforeCheckout']], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'TF_CRED', url: 'https://github.com/ravindra639/POC']]])			
				bat ' mvn clean'
            }
  }
}
}
