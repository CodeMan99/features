
# Deno cache setup (deno-cache)

Create a docker named volume at /deno-dir

## Example Usage

```json
"features": {
    "ghcr.io/CodeMan99/features/deno-cache:0": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| username | Add the 'deno' group to the given non-root user. Defaults to the value of `remoteUser`. | string | automatic |

# Deno Cache

Setup the [deno cache](https://jsr.io/@deno/cache-dir) as a volume.

Intended for usage with the `denoland/deno:debian` docker image. Otherwise,
will create a `deno` group with read-write permissions on the cache directory.


---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/CodeMan99/features/blob/main/src/deno-cache/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
