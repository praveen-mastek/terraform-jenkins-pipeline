pipeline{
    agent any
    tools{
        terraform 'terraform-14'
    }
    stages{
        stage ('Git Checkout'){
            steps{
                git branch: 'main', credentialsId: 'git-praveen', url: 'https://github.com/praveen-mastek/terraform-jenkins-pipeline/' 
            }
        }	
	stage('Terraform Init'){
	     steps{
		  sh script: 'terraform init'
	    }
    	}
	stage('Terraform apply'){
             steps{
                  sh script: 'terraform apply --auto-approve'
             }
    	}
    }
}
