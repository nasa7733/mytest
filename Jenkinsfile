pipeline {
	agent any 
	environment {
		SVC_KEY = credentials('google-auth')
	}
	stages  {
		stage ('crendtials') {
			steps {
				sh 'mkdir -p creds'
				sh 'echo $SVC_KEY | base64 > ./creds/creds.json'
				sh 'more ./creds/creds.json'
			}
		}
		stage ('checkout') {
			steps {
				git branch: 'main', url: 'https://github.com/nasa7733/mytest.git'
			}
		}
		stage ('set path') {
			steps {
				script {
					def tfHome = tool name : 'Terraform'
					ENV.PATH = "${tfHome}:${ENV.path}"
				}
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
