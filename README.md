# Kubectl in Docker
## 1.9.1
This Docker container is just an Alpine Image with `kubectl` installed and set as entrypoint. So you just run the Docker container and give it the command you need to run

## How to use
To get `kubectl` to work you need to supply kubernetes config file, you can use the `-v <hostdir>:/root/.kube` to mount a local volume in the container
```sh
docker run -v $(pwd)/docker/.kube:/root/.kube cdemi/kubectl:1.9.1 cluster-info
```