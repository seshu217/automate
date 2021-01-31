node('master')
{
    stage('checkout code from SCM')
    {
    git 'https://github.com/seshu217/automate'
    }
    stage('Build package')
    {
        sh 'mvn clean package'
    }
    stage('Build docker image')
    {
        sh 'sudo docker build -t seshu6666/webserver .'
    }
    stage('push docker image into registry')
    {
        withCredentials([string(credentialsId: 'dockpd', variable: 'docker')]) {
    sh "sudo docker login -u seshu6666 -p ${docker}"
                }
        sh 'sudo docker push seshu6666/webserver'
    }
    stage('Run container')
    {
     sh 'ssh ubuntu@172.31.27.102 sudo docker run --name web -p 9090:8080 -d seshu6666/webserver'
    }
}
