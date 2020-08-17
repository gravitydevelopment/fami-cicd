# Project Introduction
This project is focusing on a purpose to automate the environment setup and a usage of the the Kubernetes implementation on top AWS Cloud.

# Prerequisite
Below are the requirement for your environment before started to run the JenkinFile on Jenkins pipeline
- Jenkins were install in your local or Jenkins were setup on container vm
- Have a valid AWS account.
- AWS Command Line Interface (AWSCLi) installed in your local. If not, this is the guideline page: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-windows.html
- AWS Access Key Id and Secret Access Key were setup for your local
- Terraform installed in your local. 
- Kubernetes installed in your local
- Kubectl installed in your local
- Jenkins installed and configured in your local 

# How to start
- Access your jenkins, create a new project by selecting the "Multibranch Pipeline".
- At project configuration, configure the branch Sources as using a Git hub.
- Set and assign your github credential in "Credential" option
- Set the repositories url as: https://github.com/gravitydevelopment/fami-cicd
- Move to "Build Configuration" section, select Mode as : "by Jenkinsfile" and set the "Script Path" as : "Jenkinsfile".
- Save the setting.
- At the project main display, click the option "Scan Repository Now" on the left pane.
- Jenkins will pull the repository artifacts to your local and execute the jenkins pipeline based on the provide JenkinsFile in the repositories.

