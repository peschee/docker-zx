FROM node:16-alpine

ENV ZX_VERSION="7.0.7"

RUN npm install --location=global zx@${ZX_VERSION}

ENTRYPOINT ["zx"]
