FROM alpine:3.6
MAINTAINER Kyle Gato <kyle.gato@gmail.com>

ADD monitor.sh /monitor.sh

RUN apk --update add bash \
    && chmod +x /monitor.sh

ENTRYPOINT ["/monitor.sh"]
