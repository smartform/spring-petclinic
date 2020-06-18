#!groovy
pipeline {
    environment {
        registry = "augustinlourdhu/my_first_test"
        registryCredential = 'dockerhub'
        dockerImage = ''
    }
    agent none
   stages {     
      stage('Docker Build') {
           agent any
           steps {
               sh 'docker build -t shanem/spring-petclinic:latest .'
           }
       }
       stage('Building image') {
           steps{
               script {
                   dockerImage = docker.build registry + ":$BUILD_NUMBER"
               }
           }
       }
       stage('Deploy Image') {
           steps {
               script {
                   docker.withRegistry('', registryCredential) {
                       dockerImage.push()
                   }
               }
           }
       }
   }
 }
