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
		  sh script: "echo foo1", label: "my step1", script: 'terraform init'
	    }
    	}
	stage('Terraform apply'){
             steps{
                  sh script: "echo foo2", label: "my step2", script: 'terraform apply --auto-approve'
             }
    	}
    }
}
