FROM node:16-alpine

ENV ZX_VERSION="7.1.1"

RUN apk add --no-cache curl docker skopeo \
    && npm config set update-notifier false \
    && npm install --location=global zx@${ZX_VERSION}

ENTRYPOINT ["zx"]
