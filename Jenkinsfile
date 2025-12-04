pipeline {

    agent any

    environment {
        DOCKER_IMAGE = 'adititdkr13/apachewebsite:latest'
        DOCKER_CREDENTIALS_ID = 'dockerhub-credentials'
    }

    stages {

        stage('Clone Git repository') {
            steps {
                 git 'https://github.com/adititdkr1311/Jenkins-K8s-Devops-Apache-App'
            }
        }

       stage('Docker Build & Push') {
          steps {
             script {
                  // Use the Docker Pipeline plugin's helper to securely handle credentials
                  withDockerRegistry([credentialsId: DOCKER_CREDENTIALS_ID]) {

                  // Define the full image name with the build number tag
                  def imageNameWithTag = "$DOCKER_IMAGE:$BUILD_NUMBER"

                  echo "Building image: ${imageNameWithTag}"

                  // Build the image with the final tag directly
                  sh "docker build -t ${imageNameWithTag} ."

                  echo "Pushing image: ${imageNameWithTag}"

                  // Push the image
                  sh "docker push ${imageNameWithTag}"
               }
             }
          }
      }

      stage('Deploy to Kubernetes') {
            steps {
                script{
                     kubernetesDeploy (configs: 'deployment.yml' ,kubeconfigId: 'k8sconfig')

                    }
                }
      }
  }
}
