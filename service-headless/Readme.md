```bash
k exec -t <Pod> -- nslookup nginx.svc.cluster.local
k exec -t <Pod> -- nslookup nginx-hl.svc.cluster.local
```