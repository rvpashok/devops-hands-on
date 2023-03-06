pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                bat 'mvn clean compile'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                bat 'mvn clean test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                bat 'mvn clean package'
            }
        }
        stage('Docker Build') {
            agent any
              steps {
              	sh 'docker build -t rvpashok/firstdocker:latest .'
              }
            }
    }
}