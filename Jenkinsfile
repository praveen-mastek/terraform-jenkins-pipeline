pipeline{
    agent any
    stages{
        stage('Git Checkout'){
            steps{
                git branch: 'main', credentialsId: 'git-praveen', url: 'https://github.com/praveen-mastek/terraform-jenkins-pipeline/' 
            }
        }	
	stage('Terraform Init'){
	     steps{
		  sh script: 'terraform init'
	    }
    	}
    }
}
