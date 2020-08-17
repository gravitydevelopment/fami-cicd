pipeline {
    agent any
	
    stages {

        stage("Env Step : Credential Verification") {
			
		    steps {
			
			    echo 'Verify AWS Access Credential'
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
