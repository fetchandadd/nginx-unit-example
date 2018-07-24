FROM ubuntu:16.04

ARG VERSION=1.3-1~xenial

COPY unit.list /etc/apt/sources.list.d/

ADD http://nginx.org/keys/nginx_signing.key .

RUN apt-key add nginx_signing.key && \
        apt-get -y update && \
        apt-get -y install \
			unit=$VERSION \
			unit-go=$VERSION \
			unit-perl=$VERSION \
			unit-php=$VERSION \
			unit-python2.7=$VERSION \
			unit-ruby=$VERSION

# Build example go application
RUN GOPATH=/usr/share/gocode go build -o /tmp/go-app /usr/share/doc/unit-go/examples/go-app/let-my-people.go

COPY config/conf.json /var/lib/unit/

CMD ["/usr/sbin/unitd", "--no-daemon", "--control", "0.0.0.0:8080"]
