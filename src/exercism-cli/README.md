
# Exercism CLI (exercism-cli)

Install the exercism-cli.

## Example Usage

```json
"features": {
    "ghcr.io/codeman99/features/exercism-cli:1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| version | Specify what version to install. | string | latest |
| destdir | Filesystem location of the exercism binary. | string | /usr/local/bin |
| os | Specify the target operating system. | string | linux |
| arch | Specify the target CPU architecture. | string | x86_64 |

# Exercism CLI

Provides the `exercism` command at the shell. Using this tool requires authentication.

```shell
exercism configure --token=[TOKEN]
```

Please visit Exercism's [working locally](https://exercism.org/docs/using/solving-exercises/working-locally) documentation for further usage information.


---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/CodeMan99/features/blob/main/src/exercism-cli/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
