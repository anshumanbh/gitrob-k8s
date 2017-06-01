# gitrob-k8s
Kubernetes Deployment for Gitrob

## Pre-requisites
* Kubernetes cluster up and running with kubectl configured to talk to that cluster

## Getting Started?
* Change `.gitrobrc.sample` in both `/server` and `/client` directories to `.gitrobrc` by replacing the Github Access token value.
* Build docker images for both `client` and `server` and replace their names in their pod files in the `/config` folder.
    * Docker images can be built by typing `docker build -t <image-name> <location-of-Dockerfile>`
* In the client pod file (pod-client.yaml), replace the `target` environemnt value as well.

