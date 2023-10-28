
# CircleCI CLI (circleci-cli)

Install the CircleCI CLI. Also installs the CircleCI extension for vscode.

## Example Usage

```json
"features": {
    "ghcr.io/CodeMan99/features/circleci-cli:1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| version | Specify what version to install. | string | latest |
| destdir | Filesystem location of the circleci binary. | string | /usr/local/bin/ |
| completions | Attempt to install shell completions for bash & zsh. | boolean | true |
| telemetry | Configure telemetry setting. | string | disable |

## Customizations

### VS Code Extensions

- `circleci.circleci`

# CircleCI CLI

Provides the `circleci` command at the shell. Using this tool requires authentication.

```shell
circleci setup
```

Please visit CircleCI's [local pipeline development](https://circleci.com/blog/local-pipeline-development/) blog post for further usage information.


---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/CodeMan99/features/blob/main/src/circleci-cli/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
