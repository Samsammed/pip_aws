pipeline {
    agent any
    environment {
        FLASK_APP = "app.py"
        FLASK_ENV = "development"
    }
    stages {
        stage('Install Python and Pip') {
            steps {
                sh 'sudo apt-get update && sudo apt-get install -y python3-pip python3-dev'
            }
        }
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: 'Samsammed-dev-1']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Samsammed/pip_aws.git']]])
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'pip install --upgrade pip && pip install -r requirements.txt'
            }
        }
        stage('Test') {
            steps {
                sh 'pytest unit_tests.py'
            }
        }
        stage('Run API') {
            steps {
                sh 'python app.py &'
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
