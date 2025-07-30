# docker-zx

[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/peschee/zx?sort=semver&style=flat-square)](https://hub.docker.com/r/peschee/zx)

Dockerfile for running zx scripts. The container is based on the official Alpine Linux [Node](https://hub.docker.com/_/node) image. Some additional tools are installed inside the container:

- `bash` - because of https://github.com/google/zx/issues/524
- [`curl`](https://curl.se/) - because everybody needs a swiss army knife
- [`docker`](https://www.docker.com/) - in order to be able to run other containers
- [`skopeo`](https://github.com/containers/skopeo) - because everybody needs a swiss army knife for docker

## Usage

This container uses [google/zx](https://github.com/google/zx) as an `entrypoint` to run `.mjs` files. To run files in this container you must mount your source code or use this image as a base image.

- Create an `example.mjs`:

```js
#!/usr/bin/env zx

const name = 'Foo';

echo`Hello, ${name}.`;
```

- Mount `example.mjs` path and run:

```bash
docker build -t docker-zx .
docker run --rm -v "$(pwd):/tmp" docker-zx /tmp/example.mjs
```
