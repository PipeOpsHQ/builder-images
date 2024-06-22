FROM docker:26.1.4-dind-alpine3.20

COPY daemon.json /etc/docker/daemon.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 2375
# ENTRYPOINT [ "/entrypoint.sh" ]
