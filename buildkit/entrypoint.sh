#!/bin/sh

set -x

rm -rf /var/lib/buildkit/runc-native || true

# No need to format and mount storage inside a Docker container
if ! [ -f /var/lib/buildkit/.formatted ]; then
  # Initialize buildkit storage without formatting
  touch /var/lib/buildkit/.formatted
fi

exec buildkitd "$@"
