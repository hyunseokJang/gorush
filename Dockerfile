FROM plugins/base:linux-amd64

EXPOSE 8088 9000

ADD config/testdata/config.yml /opt/

COPY gorush /bin/

ENTRYPOINT ["/bin/gorush"]
CMD ["-c", "/opt/config.yml"]
