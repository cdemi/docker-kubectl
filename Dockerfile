FROM alpine:3.7
RUN apk add --no-cache curl && curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.9.1/bin/linux/amd64/kubectl &&  chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
ENTRYPOINT ["/usr/local/bin/kubectl"]
