#!/bin/bash
kubectl create -f two-container-pod.yaml
# check the status of the newly-created Pod
kubectl get pod two-container
kubectl describe pod two-container

kubectl logs two-container centos | grep "title"

# Go to the pod
# minikube ssh && docker ps | grep "two-container"
# docker inspect 2e5dd7861ed3 | jq '.[]| {NetworkMode: .HostConfig.NetworkMode, NetworkSettings: .NetworkSettings}'