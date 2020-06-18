FROM docker.io/centos:7.4.1708

USER root

EXPOSE 8088 9000

ADD config/testdata/config.yml /opt/

COPY config/gorush /bin/

ENTRYPOINT ["/"]
