FROM plugins/base:linux-amd64

EXPOSE 8088 9000

ADD config/testdata/config.yml /opt/

COPY config/gorush /bin/

ENTRYPOINT ["/"]
