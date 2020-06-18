#!groovy
pipeline {
    agent none
   stages {     
      stage('Docker Build') {
           agent any
          steps {
               sh 'ls -la $(pwd) /target/spring-petclinic-1.5.1.jar'
           }
           steps {
               sh 'docker build -t shanem/spring-petclinic:latest .'
           }
       }
   }
 }
