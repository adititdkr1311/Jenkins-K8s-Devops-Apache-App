Deploy apache application to K8s cluster

-- Jenkins <-> K8s connectivity
     - Using k8s plugin and creds using kubconfig file 

-- Jenkins <-> Docker connectivity
     - Using docker pipeline plugin 

-- Jenkins <-> Git connectivity 
     - Using git plugin 

-- Dockerhub / K8s cluster authentication
	   - manage jenkins -> manage cresentials 
			   - DOCKER_CREDENTIALS_ID (connect to dockerhub account)
			        - select Username with password 
			   - k8sconfig (this config file for k8s cluster which allows jenkins to authenticate and connect)
  					- select secret file and upload your cluster config file 
