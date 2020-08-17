pipeline {
    agent any
	
    stages {

        stage("Environment Setup") {
			
		    steps {
			    echo 'Setup Kubernetes on cloud AWS EKS'
				bat 'terraform init -input=false'
				bat 'terraform plan'
				bat 'terraform apply -auto-approve' 
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
