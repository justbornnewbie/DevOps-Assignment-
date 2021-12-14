pipeline {
    agent 
    {
        label 'control'
    }
    stages 
    {
        stage('deploy-tomcat')
        {
            steps
            {
                sh '''
                docker-compose -f tomcat-compose.yml down
                docker-compose -f tomcat-compose.yml up -d
                '''
            }
        }
    }
}