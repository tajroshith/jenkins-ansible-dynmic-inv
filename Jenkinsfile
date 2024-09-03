pipeline {
    
agent {
label 'node2'
}

environment {
AWS_EC2_PRIVATEKEY=credentials('EC2-Instance-Credentials')
}

parameters {
  choice choices: ['development', 'staging', 'master'], description: 'Select the Branch Name', name: 'BranchName'
}

options {
  buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '5', daysToKeepStr: '', numToKeepStr: '5')
  timestamps()
}

stages{
stage('Checkoutcode'){
steps{
git branch: "${params.BranchName}", credentialsId: 'fe90c20c-2d67-4acc-a96d-5ff45acbc81e', url: 'https://github.com/tajroshith/jenkins-ansible-dynmic-inv.git'
}
}

stage('ExecutePlaybook'){
steps{
sh "whoami"
sh "hostname -i"
sh "ansible-inventory --graph -i inventory/aws_ec2.yaml"
sh "ansible-playbook -i inventory/aws_ec2.yaml playbooks/installTomcat.yaml --private-key=$AWS_EC2_PRIVATEKEY --ssh-common-args='-o StrictHostKeyChecking=no'"
}
}
}// Stages Closing
}// Pipeline Closing
