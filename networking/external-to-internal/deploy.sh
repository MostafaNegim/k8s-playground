#!/bin/bash

# Enable Ingress functionality in minikube

# minikube addons list | grep ingress
# minikube addons enable ingress

sudo sh -c "echo `minikube ip` happy.k8s.io >> /etc/hosts"
kubectl create -f echoserver.yaml
kubectl create -f ../pod-to-service/nodeport-deployment.yaml

 kubectl create -f ingress.yaml
 kubectl describe ing happy-ingress