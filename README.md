# Nginx Unit Example

## Preliminary steps

Install and start nginx unit via docker
```sh
docker-compose up
```

Nginx Unit is already configured through the image building process from Docker. It can be reconfigured with this:
```sh
cd config
./configure.bash
```

## Nginx Unit sample apps

Nginx Unit modules are shipped with sample apps.

### PHP
```sh
http localhost:8300
```

### Python 2.7
```sh
http localhost:8400
```

### Go
```sh
http localhost:8500
```

### Perl
```sh
http localhost:8600
```

### Ruby
```sh
http localhost:8700
```

## Custom sample apps

This example has also custom apps. The source code can be founded in the subdirectory `www`.

### Python 2.7
```sh
http localhost:8081
```

### PHP
```sh
http localhost:8082
```
