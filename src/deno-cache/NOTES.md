# Deno Cache

Setup the [deno cache](https://jsr.io/@deno/cache-dir) as a volume.

Intended for usage with the `denoland/deno:debian` docker image. Otherwise,
will create a `deno` group with read-write permissions on the cache directory.
