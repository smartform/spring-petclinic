#!groovy
pipeline {
    agent none
   stages {     
      stage('Docker Build') {
           agent any
           steps {
               sh 'docker build -t shanem/spring-petclinic:latest .'
           }
       }
       stage('Docker Push') {
           agent any
           steps {
               withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'dockerhubPassword',
                       usernameVariable: 'dockerhubUser')]) {
                   sh "docker login -u ${env.dockerhubUser} -p ${env.dockerhubPassword}"
                   sh 'docker push shanem/spring-petclinic:latest'
               }
           }
       }
   }
 }
