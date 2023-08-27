pipeline {
    agent any
    
    parameters {
        string(name: 'ARGUMENTS', description: 'Script arguments', defaultValue: 'README.md host_print.sh')
    }
    
    stages {
        stage('Clone Repository') {
            steps {
                checkout scm
            }
        }
        
        stage('Execute Script') {
            steps {
                script {
                    def scriptPath = "${workspace}/filetype_args.sh"
                    def arguments = "${params.ARGUMENTS}"
                    
                    def command = "bash ${scriptPath} ${arguments}"
                    def output = sh(script: command, returnStdout: true).trim()
                    
                    echo "Script output:"
                    echo output
                }
            }
        }
        
        // Other stages
    }
}
