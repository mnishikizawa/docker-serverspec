FROM centos:7
MAINTAINER nishiki 

RUN yum install -y epel-release
RUN yum install -y redis

EXPOSE 6379
ENTRYPOINT  ["/usr/bin/redis-server", "/etc/redis.conf"]
CMD ["--bind", "0.0.0.0"]
