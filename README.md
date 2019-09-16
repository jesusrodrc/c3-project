# Udagram Image Filtering Microservice

Udagram is a simple cloud application developed alongside the Udacity Cloud Engineering Nanodegree. It allows users to register and log into a web client, post photos to the feed, and process photos using an image filtering microservice.



## Run application

### Run in docker
You'll need to install docker https://docs.docker.com/install/. Open a new terminal within the project directory and run:

1. Build the images: `docker-compose -f docker-compose-build.yaml build --parallel`
2. Push the images: `docker-compose -f docker-compose-build.yaml push`
3. Run the container: `docker-compose up`


### Setup kubernetes

1. Create a cluster following the instructions here https://github.com/kubermatic/kubeone/blob/master/docs/quickstart-aws.md
2. Once kubectl has a config set: `kubectl apply -f ../c3-project/udacity-c3-deployment/k8s`

### Run CI pipeline

1. Push to the repository, the configured CI pipeline will build the images, push and rebuild the services in the cluster