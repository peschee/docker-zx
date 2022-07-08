# docker-zx

Dockerfile for running zx scripts.

## Usage

This container uses [google/zx](https://github.com/google/zx) as an `entrypoint` to run `.mjs` files. To run files in this container you must mount your source code or use this image as a base image.

- Create an `example.mjs`:

```js
#!/usr/bin/env zx

const name = 'Foo';

await $`echo Hello, ${name}.`;
```

- Mount `example.mjs` path and run:

```bash
docker run --rm -v "$(pwd):/tmp" peschee/docker-zx /tmp/example.mjs
```
