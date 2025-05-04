pipeline {
    agent any

    environment {
        IMAGE_NAME = "vinaybt/cpp-jenkins-demo"
    }

    stages {
        stage('Check Docker Access') {
            steps {
                script {
                    sh 'whoami'
                    sh 'groups'
                    sh 'docker version'
                }
            }
        }
        stage('Clone Repo') {
            steps {
                git url: 'https://github.com/Vinaybt/Jenkins-Pipeline.git', branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${IMAGE_NAME}")
                }
            }
        }

        stage('Run Binary in Container') {
            steps {
                script {
                    docker.image("${IMAGE_NAME}").run()
                }
            }
        }
    }
}
