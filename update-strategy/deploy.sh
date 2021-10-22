#!/bin/bash

kubectl apply -f deploy-simple-nginx.v1.0.yaml
kubectl apply -f service-simple-nginx-v1.0.yaml

kubectl describe deployment simple-nginx


export SERVICE_URL=$(minikube service nginx-service --url)

curl $SERVICE_URL
kubectl edit deployment simple-nginx --record

# ADD
# command:
# - sh
# - -c
# - echo "Happy Programming with Kubernetes!" >
# /usr/share/nginx/html/index.html && service nginx stop && nginx
# -g "daemon off;"

curl $SERVICE_URL
kubectl rollout status deployment simple-nginx
kubectl describe deployment simple-nginx

kubectl get rs

k describe rs simple-nginx-6665dd75f | grep Selector

# Rollback
kubectl rollout history deployment simple-nginx

kubectl rollout undo deployment simple-nginx --to-revision=1
kubectl rollout status deployment simple-nginx
k get rs
curl $SERVICE_URL

# Without specifying the revision number, the rollback process will simply jump back to previous version
kubectl rollout undo deployment simple-nginx