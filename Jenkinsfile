pipeline {
    agent any

    parameters {
        choice(name: 'TerraformAction', choices: 'Deploy\nDestroy', description: 'Select the action to perform')
    }

    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('Checkout Code') {
            steps {
                script {
                    // Checkout Terraform code from GitHub
                    checkout([
                        $class: 'GitSCM',
                        branches: [[name: '*/main']],
                        userRemoteConfigs: [[url: 'https://github.com/mathesh-me/aws-ha-deployment-jenkins-terraform.git']]
                    ])
                }
            }
        }

        stage('Terraform Init and Plan') {
            when {
                expression {
                    return params.TerraformAction == 'Deploy'
                }
            }
            steps {
                script {
                    // Conditional execution of init and plan stages only when deploying
                    sh 'terraform init'
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

        stage('Terraform Apply') {
            when {
                expression {
                    return params.TerraformAction == 'Deploy'
                }
            }
            steps {
                script {
                        sh 'export AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}'
                        sh 'export AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}'
                        // Deploy resources using Terraform
                        sh 'terraform apply -auto-approve tfplan'
                    
                }
            }
        }

        stage('Terraform Destroy') {
            when {
                expression {
                    return params.TerraformAction == 'Destroy'
                }
            }
            steps {
                script {
                        sh 'export AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}'
                        sh 'export AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}'
                        // Destroy resources using Terraform with the saved plan
                        sh 'terraform destroy -auto-approve'
                }
            }
        }
    }

    post {
        success {
            script {
                if (params.TerraformAction == 'Deploy') {
                    echo 'Deployment succeeded'
                } else {
                    echo 'Destroy succeeded'
                }
            }
        }
        failure {
            script {
                if (params.TerraformAction == 'Deploy') {
                    echo 'Deployment failed'
                } else {
                    echo 'Destroy failed'
                }
            }
        }
    }
}
