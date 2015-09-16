FROM centos
MAINTAINER lijiao <lijiao@jd.com>

# add our user and group first to make sure their IDs get assigned consistently, regardless of whatever dependencies get added
RUN groupadd -r redis-port && useradd -r -g redis-port redis-port

ENV JIMDB_VERSION 3.0.13
ADD bin/redis-port  /opt/
USER redis-port
WORKDIR /opt

ENTRYPOINT [ "/opt/redis-port" ]
