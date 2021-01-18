Devops Skill Test Summary:



Install MiniKube, Helm, Kubectl and Docker :
VM named Test server has been created for installation of Minikuke,Helm,Kubectl and Docker.

Create a GitRepo (in your own account) that creates a basic web app (in a language of your choosing) :
Github repo has been created and simple web app helloworld is created using python 

Create a Docker file that exposes the basic web app:
Dockerfile for exposing basic web app is created 


Create a DockerHub account so you can publish a Docker Image to it:
Dockerhub account with private repo has bee created
Create a Jenkinsfile in your GitHub repo (use your own account) with two Jenkinsfiles
(1. Pipeline Jenkinsfile - Builds your Dockerfile and publishes it to your DockerHub account - Jenkinsfile has bee created with respect to Building image and publishing to dockerhub) 
(2. DSL Jenkinsfile - This task needs to start your Docker container created in the Pipeline and send one command to interact with the container (provide Evidence that it runs and is serving the webpage built - jenkinsfile to run the docker image as container and interaction wih the container using a command has been done).

Use a Public Helm chart to deploy the Jenkins Chart onto the MiniKube instance on your environment:
Helm chart for jenkins has been installed onto a minikube environment but unable to expose the URL externally and configure it

Write an ARM template to deploy (Use your own Azure account):

1.An Azure StorageAccount with a blob container (include any requires resources).
2.Deploy the ARM template via the CLI (Show the commands).
Commands are updated in documents folder.

In Jenkins add a step to the pipeline Jenkinsfile created to publish the webpage to the Azure storage account - 
Unable to publish through jenkins pipeline but have moved the files to azure storage account an tried to publish the webpage with static ip.

Build a basic HELM chart (from scratch) to publish your container (created in the earlier steps) into your MiniKube environment

Helm chart has been created for the web app and installed it into the minikube environment

Write a script in PowerShell or Bash that checks your pod is running in your MiniKube environment and prints out the Pod Name and
Namespace. 

A script in bash has been scripted and executed for displaying the pod name and Namespace of the pods running in the minikube environment




