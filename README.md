[![Docker Build Status](https://img.shields.io/docker/build/cdemi/kubectl.svg)](https://hub.docker.com/r/cdemi/kubectl/)

Kubectl in Docker
===

This repository contains Docker container images based on Alpine Image with `kubectl` installed and set as entrypoint. So you just run the Docker container and give it the command you need to run

# Supported tags
- [`1.9.2`, `latest` (*/Dockerfile*)](https://github.com/cdemi/docker-kubectl/blob/v1.9.2/Dockerfile)
- [`1.9.1` (*/Dockerfile*)](https://github.com/cdemi/docker-kubectl/blob/v1.9.1/Dockerfile)
- [`1.8.7` (*/Dockerfile*)](https://github.com/cdemi/docker-kubectl/blob/v1.8.7/Dockerfile)

## How to use
To get `kubectl` to work you need to supply kubernetes config file, you can use the `-v <hostdir>:/root/.kube` to mount a local volume in the container
```sh
docker run -v $(pwd)/docker/.kube:/root/.kube cdemi/kubectl:1.9.2 cluster-info
```