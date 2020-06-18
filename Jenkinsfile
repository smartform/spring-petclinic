#!groovy
pipeline {
    agent none
   stages {     
      stage('Docker Build') {
           agent any
          steps {
               sh 'ls -la $(pwd) src/'
           }
           steps {
               sh 'docker build -t shanem/spring-petclinic:latest .'
           }
       }
   }
 }
