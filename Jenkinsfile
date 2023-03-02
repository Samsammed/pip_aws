pipeline {
    agent {
      any { image 'python:3' }
    }
    environment {
        FLASK_APP = "app.py"
        FLASK_ENV = "development"
    }
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: 'main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Samsammed/pip_aws']]])
            }
        }
        stage('Build') {
            steps {
                sh 'sudo apt-get update && sudo apt-get install -y python3-pip python3-dev'
            }
        }
        stage('Test') {
            steps {
                sh 'pytest unit_tests.py'
            }
        }
        stage('Run API') {
            steps {
                sh 'python3 api.py &'
            }
        }
        stage('Merge to Dev') {
            steps {
                sh 'git checkout Dev && git merge origin/master'
            }
        }
        stage('Deploy to Dev') {
            steps {
                sh 'echo "http://localhost:5000"'
            }
        }
    }
}
