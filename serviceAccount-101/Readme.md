1. Run
```bash
kubectl run -it --rm testpod --restart=Never --image=alpine -- sh
 cat /var/run/secrets/kubernetes.io/serviceaccount/token && echo
```
1. Create ServiceAccount
```bash
kubectl create serviceaccount testsa
kubectl get secrets
```
1. Apply
```bash
kubectl apply -f testPod.yaml
```
