FROM node:11.7.0-alpine

RUN apk update && \
    apk add --no-cache git make gcc musl-dev && \
    rm -rf /var/cache/apk/*

WORKDIR /workdir
