# gitrob-k8s
Kubernetes Deployment for Gitrob

## Pre-requisites
* Kubernetes cluster up and running with kubectl configured to talk to that cluster

## Getting Started?
* Change `.gitrobrc.sample` in both `/server` and `/client` directories to `.gitrobrc` by replacing the Github Access token value.
* Build docker images for both `client` and `server` separately by typing `docker build -t <image-name> <location-of-Dockerfile>`.
* Push these images to the registry that your Kubernetes cluster can download images from.
* Replace the Docker image name in the config files (pod-client.yaml and pod-server.yaml) in the `/config` directory by the Docker image name that was created above.
* In the client pod file (pod-client.yaml), replace the `target` environemnt value as well with the target that is being run using Gitrob.
* Finally, type `kubectl apply -f config/pod-server.yaml` and then `kubectl apply -f config/pod-client.yaml`.
* The K8s cluster will start 2 pods - one for the server and one for the client.
* Gitrob client will run against target and you can see the results on the Gitrob server by navigating to the Service:9393 endpoint.

