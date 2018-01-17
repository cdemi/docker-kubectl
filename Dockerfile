FROM alpine:3.7
RUN apk add --no-cache curl && curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.8.7/bin/linux/amd64/kubectl &&  chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl && apk del --no-cache curl
ENTRYPOINT ["/usr/local/bin/kubectl"]
