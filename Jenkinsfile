pipeline {

agent any 

   environment {

        google_key = credential('google-auth')
  
               }
  
  stages  {
  
  stage ('crendtials') {
    steps {
	sh 'mkdir -p creds'
    sh 'echo $google_key | base64 > ./creds/creds.json'
	}
	}
	
	
	stage ('set path') {
	 steps {
	 script {
	  def tfHome = tool name : "terraform"
	  ENV.PATH = "${tfHome}:${ENV.path}"
	  }
	  sh 'terraform --version'
	  }
	  
	  }
	  
	  stage ('checkout') {
	  
	  steps {
	  git branch: 'master', url: 'https://github.com/nasa7733/mytest.git'
	  }
	  }
	  
	 stage ('Build Infra'){
		 steps {
		 		 sh 'terraform init'
	 			 sh 'terraform plan'
	 			 sh  'terraform apply -auto-approve'
		 }
	 }
	  
	}
	}
