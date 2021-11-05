1. First
```bash
docker build -t flasksidecar .
docker run -d -p 5000:5000 flasksidecar
curl localhost:5000
```
1. Side Car
```bash
docker build -t nginxsidecar .
```