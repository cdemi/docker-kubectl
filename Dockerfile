FROM alpine:3.9.3
RUN apk add --no-cache curl ca-certificates && curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.13.3/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl && \
    apk del --no-cache curl
ENTRYPOINT ["/usr/local/bin/kubectl"]
