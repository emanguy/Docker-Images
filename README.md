# Docker Images

This repo contains dockerfiles for several images I use elsewhere. Versions are controlled by VERSIONS.txt and the docker images are automatically built by CircleCI and pushed to GitHub Container Registry.

## Available Images

* `ghcr.io/emanguy/rust-ci` - Built off the official rust image. Installs a couple cargo extensions that are useful in CI.