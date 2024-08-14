pipeline {
    agent any

    stages {
        stage('git') {
            steps {
                   git url: 'https://github.com/Seshadriraghav22/sr23.git', branch: 'main'
            }
        }
       
        stage('Docker Image') {
            steps {
                script {
                    sh 'docker build -t app .'
                }
            }
        }
        
        stage('Run') {
            steps {
                script {
                    sh 'docker run -d -p 83:80 app'
                }
            }
        }
    }
}
