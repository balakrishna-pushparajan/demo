node('master')
{
    stage('git')
    {
    checkout scm        
    }
    stage('Containerization')
    {
        sh'''
        cd /var/lib/jenkins/workspace/Devops/
        docker build -t balakrishnapushparajan/demo:demo .
        '''
    }
    registry = "balakrishnapushparajan/demo"
    withDockerRegistry(credentialsId:'dockerbala', url: '')
    {
       sh'''
       docker push balakrishnapushparajan/demo:demo
       docker stop demo
       docker system prune -f
       docker volume prune -f 
       docker run -d --name demo -p 5000:5000 balakrishnapushparajan/demo:demo
       
    '''
    }
    stage('WebApp interaction')
    {
     sh'''
      docker exec -i demo ps -ef
     
     '''
     
    }
        
    
    
}

