pipeline {
    agent any
	
    stages {

        stage("Environment Setup") {
			
		    steps {
			    echo 'Install kubectl in environment'
				bat 'curl -o kubectl.exe https://amazon-eks.s3.us-west-2.amazonaws.com/1.17.7/2020-07-08/bin/windows/amd64/kubectl.exe'
				
				echo 'Execute Terraform'
				bat 'terraform init -input=false'
				bat 'terraform plan'
				bat 'terraform apply -auto-approve' 
				
				bat 'kubectl get nodes --watch'
				bat 'kubectl get service -o wide'
            }
            
        }
        
        stage("deploy") {
        
            steps {
                echo 'Build the deployment package'
				bat 'kubectl create -f ./apps/nginx/nginx.yaml'
				bat 'kubectl create -f ./apps/nginx/nginx-svc.yaml'
            }
        }
        
    }
}
