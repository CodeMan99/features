# Dev Container Features: CodeMan99

Provides reusable tools for as devcontainer features.

## CircleCI CLI

Provides the `circleci` command at the shell. Using this tool requires authentication.

```shell
circleci setup
```

Please visit CircleCI's [local pipeline development](https://circleci.com/blog/local-pipeline-development/) blog post for further usage information.

## Deno Cache

Create a named docker volume at `/deno-dir`. Properly setup with a `deno` user group.

Intended for use with the [denoland/deno:debian](https://hub.docker.com/r/denoland/deno) docker image.

## Exercism CLI

Provides the `exercism` command at the shell. Using this tool requires authentication.

```shell
exercism configure --token=[TOKEN]
```

Please visit Exercism's [working locally](https://exercism.org/docs/using/solving-exercises/working-locally) documentation for further usage information.
