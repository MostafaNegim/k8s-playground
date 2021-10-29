# Web server in go
1. Build Image
```bash
docker build -t go-web:v0.0.1 .
```


1. Start go-web
```bash
docker run -it -d -p 80:8080 go-web:v0.0.1
```
