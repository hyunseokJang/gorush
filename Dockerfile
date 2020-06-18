FROM plugins/base:linux-amd64

EXPOSE 8088

ADD config/config.yml /
ADD bin/gorush /

ENTRYPOINT ["/gorush"]
CMD ["-c", "config.yml"]
