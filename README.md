README FOR APPLICATION FOLDER

The application is a Django web app framework connected to a postgresDB to server as the backend

the application has been as a docker-compose file, kubernetes manifest and and Helm chart.

there are .env files for the django web app framework and env files for the postgresdb application.

in the root of the project please run:

	python3.9 -m venv venv
	source venv/bin/activate
	pip install -r web/requirements.txt

To run the docker-compose.yaml file use the command:
	docker-compose up -d 

the .env file is part of the files submitted.










README FOR INFRASTRUCTURE and CI/CD

Infrastrure consists of one node in the kubernetes cluster running in digital ocean and defined using Terraform

Instructions:

You will need to register an account with digital ocean and install their cli client called doctl. you also need to have terraform installed.

please go the website to setup doctl:
	https://docs.digitalocean.com/reference/doctl/ 
follow the instructions and setup your token and be able to make API calls to authentic between your system and digital ocean.

files available in the folder include 

1. provider.tf, main-infra.tf, output.tf and variable.tf first to initialize your terraform backend, install kubernetes and Helm provider and output your KUBECONFIG definitions. Please copy the KUBECONFIG into a text file and run the command: 

	export KUBECONFIG=“path/to/file”. 
This should enable you to connect to the kubernetes cluster.

 

CI/CD

* To create the secret in the helm chart which is also used for the kubernetes manifest run the command:
	kubectl create secret generic <secret name> —from-env-file sec.txt

* To create the configMap file that is referenced in the Helm and kubernetes manifest run the command: 
	kubectl apply -f comfmap.yaml


* To run the helm charts please navigate to the helm_release.tf files and run the:
	terraform plan and apply command and type yes when prompted.

* To check if your application is running you can use:
	1. kubectl get pods
	2. Copy the running webapp pod name and exec into the running container with:
	3. kubectl exec -it <pod_name> — /bin/bash 
	4. Once inside the running container run the command to establish a python virtual environment:
	i	source /opt/venv/bin/activate
	ii	python manage.py migrate
	iii	bash migrate.sh
	
	5. This will run the migrations of databasse between the webframework and postgres db.

	

