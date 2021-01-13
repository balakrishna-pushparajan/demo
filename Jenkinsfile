node('master')
{
    stage('git')
    {
    sh'''
    cd /var/lib/jenkins/workspace/
    rm -rf demo
    git clone https://github.com/balakrishna-pushparajan/demo.git
    
    '''
        
    }
    stage('Containerization')
    {
        sh'''
        cd /var/lib/jenkins/workspace/demo/
        docker build -t balakrishnapushparajan/demo:demo .
        '''
    }
    registry = "balakrishnapushparajan/demo"
    withDockerRegistry(credentialsId:'docker', url: '')
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

