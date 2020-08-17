pipeline {
    agent any
	
	environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        TF_IN_AUTOMATION      = '1'
    }
	
    stages {

        stage("Env Step : Credential Verification") {
			
		    steps {
			
			    echo 'Verify AWS Access Credential'
			
                script {
                    currentBuild.displayName = params.version
                }
                sh 'terraform init -input=false'
                sh 'terraform workspace select ${environment}'
                sh "terraform plan -input=false -out tfplan -var 'version=${params.version}' --var-file=environments/${params.environment}.tfvars"
                sh 'terraform show -no-color tfplan > tfplan.txt'
            }
            
        }
        
        stage("build") {
        
            steps {
                echo 'Test build phase'
            }
        }
        
        stage("test") {
        
            steps {
                echo 'Test test phase'
            }
        }
        
        stage("deploy") {
        
            steps {
                echo 'Test deploy phase'
            }
        }
        
    }
}
