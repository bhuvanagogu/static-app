pipeline {
    agent any
    parameters {
        string(name: 'CONTAINER1_NAME', defaultValue: 'container1', description: 'Name of container 1')
        string(name: 'CONTAINER2_NAME', defaultValue: 'container2', description: 'Name of container 2')
        string(name: 'CONTAINER3_NAME', defaultValue: 'container3', description: 'Name of container 3')
        string(name: 'PORT1', defaultValue: '8081', description: 'Port for container 1')
        string(name: 'PORT2', defaultValue: '8082', description: 'Port for container 2')
        string(name: 'PORT3', defaultValue: '8083', description: 'Port for container 3')
    }
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/bhuvanagogu/static-app.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t static-app-image .'
            }
        }
        stage('Deploy Containers') {
            steps {
                sh "docker run -d --name ${params.CONTAINER1_NAME} -p ${params.PORT1}:80 static-app-image"
                sh "docker run -d --name ${params.CONTAINER2_NAME} -p ${params.PORT2}:80 static-app-image"
                sh "docker run -d --name ${params.CONTAINER3_NAME} -p ${params.PORT3}:80 static-app-image"
            }
        }
    }
}
