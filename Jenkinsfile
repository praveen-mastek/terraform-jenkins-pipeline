pipeline {

    parameters {
        string(name: 'environment', defaultValue: 'terraform', description: 'Workspace/environment file to use for deployment')
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')

    }


    //  environment {
    //     AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
    //     AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    // }

   agent  any
        // options {
        //         timestamps ()
        //         ansiColor('xterm')
        //     }
    stages {
        stage('checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git-praveen', url: 'https://github.com/praveen-mastek/terraform-jenkins-pipeline.git']]])
                }
            }

        stage('workspace') {
            steps {
             sh "terraform init -input=false"
          script {
                try {
                    sh "terraform workspace new ${params.environment}"
                } catch (err) {
                    sh "terraform workspace select ${params.environment}"
                }
          }
          sh "terraform plan -input=false -out tfplan"
          sh 'terraform show -no-color tfplan > tfplan.txt'
          }
        }
        stage('Approval') {
           when {
               not {
                   equals expected: true, actual: params.autoApprove
               }
           }

           steps {
               script {
                    def plan = readFile 'tfplan.txt'
                    input message: "Do you want to apply the plan?",
                    parameters: [text(name: 'Plan', description: 'Please review the plan', defaultValue: plan)]
               }
           }
       }

        // stage('Apply') {
        //     steps {
        //         sh "pwd;cd terraform/aws-instance-first-script ; terraform apply -input=false tfplan"
        //     }
        // }
    }

  }
