FROM node:22-alpine

ENV ZX_VERSION="8.0.2"

RUN apk add --no-cache bash curl docker skopeo \
    && npm config set update-notifier false \
    && npm install --location=global zx@${ZX_VERSION}

ENTRYPOINT ["zx"]
