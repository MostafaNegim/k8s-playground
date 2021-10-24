#!/bin/bash

kubectl create -f nodeport-deployment.yaml

kubectl describe service nodeport-svc

# Check the iptable
# Enter minikube
minikube ssh
sudo iptables -t nat -nL