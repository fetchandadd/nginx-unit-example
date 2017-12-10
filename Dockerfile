FROM ubuntu:16.04

ADD unit.list /etc/apt/sources.list.d/

ADD http://nginx.org/keys/nginx_signing.key .

RUN apt-key add nginx_signing.key && \
        apt-get -y update && \
        apt-get -y install \
			unit=0.2-1~xenial \
			unit-php \
			unit-python2.7

CMD ["/usr/sbin/unitd", "--no-daemon", "--control", "0.0.0.0:8080"]
