#!groovy
pipeline {
    agent none
   stages {     
      stage('Docker Build') {
           agent any
          steps {
               sh 'ls -la $(pwd)/target/'
           }
       }
   }
 }
