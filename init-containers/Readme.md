# InitContainers
1. Create the pod.
```bash
k create -f myapp.yaml
```
1. View the status of the pod:
```bash
k get pods
k describe -f myapp.yaml
```
1. See logs for init containers in this pod
```bash
kubectl logs myapp-pod -c init-myservice # Inspect the first init container
kubectl logs myapp-pod -c init-mydb      # Inspect the second init container
```
1. Run the following commands to create the services:
```bash
 k create -f mydb.yaml
 k create -f myservice.yaml
```
1. You'll then see that those init containers complete, and that the myapp-pod Pod moves into the Running state:
```bash
k get pod
```