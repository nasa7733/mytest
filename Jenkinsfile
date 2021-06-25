pipeline {
	agent any 
	environment {
		SVC_ACCOUNT_KEY = credentials('google-auth')
	}
	stages  {
		stage ('checkout') {
			steps {
				git branch: 'main', url: 'https://github.com/nasa7733/mytest.git'
			}
		}
		stage ('set path') {
			steps {
				script {
					def tfHome = tool name : 'Terraform'
					env.PATH = "${tfHome}:${env.PATH}"
				}
				sh 'terraform --version'
			}
		}
		stage ('crendtials') {
			steps {
				sh 'mkdir -p creds'				
				sh 'echo $SVC_ACCOUNT_KEY | base64 -d > ./creds/creds.json'
		                sh 'terraform --version'
			}
		}
		
		
		stage ('Build Infra'){
			steps {
				sh 'terraform init'
	 			sh 'terraform plan'
	 		        sh 'terraform apply -auto-approve'
			}
		}
	}
}
