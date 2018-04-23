# Nginx Unit Example

Install and start nginx unit via docker
```sh
docker-compose up
```

Nginx Unit is already configured through the image building process from Docker. It can be reconfigured with this:
```sh
cd config
./configure.bash
```

Python
```sh
http localhost:8081
```

PHP
```sh
http localhost:8082
```
