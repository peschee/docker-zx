FROM node:18-alpine

ENV ZX_VERSION="7.2.1"

RUN apk add --no-cache bash curl docker skopeo \
    && npm config set update-notifier false \
    && npm install --location=global zx@${ZX_VERSION}

ENTRYPOINT ["zx"]
