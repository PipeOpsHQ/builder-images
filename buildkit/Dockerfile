FROM debian:bullseye

# Install dependencies
RUN apt-get update && apt-get install -y curl ca-certificates && rm -rf /var/lib/apt/lists/*

# Install buildkit
COPY --from=moby/buildkit:v0.10.4 /usr/bin/build* /usr/bin/

# Add config files
COPY buildkitd.toml /etc/buildkit/buildkitd.toml
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
