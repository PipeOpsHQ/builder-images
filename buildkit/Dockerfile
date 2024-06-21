FROM moby/buildkit:v0.14.1
RUN apk add --no-cache e2fsprogs-extra btrfs-progs
COPY buildkitd.toml /etc/buildkit/buildkitd.toml
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
