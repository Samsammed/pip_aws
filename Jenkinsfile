pipeline {
    agent any
    environment {
        FLASK_APP = "app.py"
        FLASK_ENV = "development"
    }
         stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: 'Samsammed-dev-1']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Samsammed/pip_aws.git']]])
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
