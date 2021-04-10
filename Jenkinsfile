pipeline{
    agent any
    tools{
        terraform 'terraform-11'
    }
    stages{
        stage ('Git Checkout'){
            steps{
                git branch: 'main', credentialsId: 'git-praveen', url: 'https://github.com/praveen-mastek/terraform-jenkins-pipeline/' 
            }
        }	
	stage('Terraform Init'){
	     steps{
		  sh lable '', script: 'terraform init'
	    }
    	}
	stage('Terraform apply'){
             steps{
                  sh lable '', script: 'terraform apply --auto-approve'
             }
    	}
    }
}
