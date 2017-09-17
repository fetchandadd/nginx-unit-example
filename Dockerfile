FROM ubuntu:16.04

ADD http://nginx.org/keys/nginx_signing.key .

RUN apt-key add nginx_signing.key && \
        echo 'deb http://nginx.org/packages/mainline/ubuntu/ xenial nginx' >> /etc/apt/sources.list && \
        echo 'deb-src http://nginx.org/packages/mainline/ubuntu/ xenial nginx' >> /etc/apt/sources.list && \
        apt-get -y update && \
        apt-get -y install unit

CMD ["/usr/sbin/unitd", "--no-daemon", "--control", "0.0.0.0:8080"]
