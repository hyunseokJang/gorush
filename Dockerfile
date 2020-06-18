FROM golang:1.9

EXPOSE 8088 9000

ADD config/testdata/config.yml /opt/

COPY config/gorush /bin/

ENTRYPOINT ["/bin/gorush"]
CMD ["-c", "/opt/config.yml"]
