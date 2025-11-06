
# Elm Language Compiler (via Github Releases) (elm-lang)

Install the elm language compiler and related tools

## Example Usage

```json
"features": {
    "ghcr.io/CodeMan99/features/elm-lang:0": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| version | Specify the compiler version | string | 0.19.1 |
| elmPrefix | Where the "elm" binary will be installed | string | /usr/local/bin |
| installFormat | Install the "elm-format" command (via npm if installed) | boolean | true |
| installReview | Install the "elm-review" command (via npm if installed) | boolean | true |
| installTest | Install the "elm-test" command (via npm if installed) | boolean | true |

## Customizations

### VS Code Extensions

- `Elmtooling.elm-ls-vscode`

# Elm-lang

Installs the [Elm](https://elm-lang.org) compiler following the [linux install](https://github.com/elm/compiler/blob/master/installers/linux/README.md) documentation.

```shell
elm --help
```

See the [language guide](https://guide.elm-lang.org), [examples](https://elm-lang.org/examples), and [documentation](https://elm-lang.org/docs) for more information on the language.


---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/CodeMan99/features/blob/main/src/elm-lang/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
