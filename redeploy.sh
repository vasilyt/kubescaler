#!/bin/bash

eval $(minikube docker-env)
mvn clean install
docker build -t user user/

# does it really work?
kubectl set image deployment.v1.apps/user-deployment user=user
