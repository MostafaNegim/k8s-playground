```bash
openssl genrsa -out mostafa.key 2048
openssl req -new -key mostafa.key -out mostafa.csr -subj "/CN=mostafa"
openssl x509 -req -in mostafa.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out mostafa.crt -days 300

```