pipeline {
    agent any
    stages {
    
        stage('remove') {
            steps {
                sh "rm -r VGWC"
            }
        }
        
        stage('clone') {
            steps {
                sh "git clone https://github.com/MrScors/VGWC.git"
            }
        }
        
        stage('clean') {
            steps {
                sh "/home/g123_18_1_pavlov/apache-maven/bin/mvn clean -f VGWC"
            }
        }
        stage('test') {
            steps {
                sh "/home/g123_18_1_pavlov/apache-maven/bin/mvn test -f VGWC"
            }
        }
        stage('install') {
            steps {
                sh "/home/g123_18_1_pavlov/apache-maven/bin/mvn install -f VGWC"
            }
        }
        // stage('package') {
        //     steps {
        //         bat "/home/g123_18_1_pavlov/apache-maven/bin/mvn package -f VGWC"
        //     }
        // }      
    }
}
