#!/usr/bin/env bash
#
# Install the Exercism CLI tool
# https://github.com/exercism/cli
#
# Dependencies: curl, cut
#
# Environment:
#   - VERSION: The version to install [default: latest].
#   - DESTDIR: The destination of the executable [default: /usr/local/bin/].
#   - OS: [default: linux]
#   - ARCH: [default: x86_64]

set -e

GITHUB_BASE_URL="https://github.com/exercism/cli"
LATEST_URL="${GITHUB_BASE_URL}/releases/latest/"
DESTDIR="${DESTDIR:-/usr/local/bin}"
OS="${OS:-linux}"
ARCH="${ARCH:-x86_64}"

if [[ -z "$VERSION" ]] || [[ "$VERSION" = "latest" ]]; then {
    VERSION=$(curl -sLI -o /dev/null -w '%{url_effective}' "$LATEST_URL" | cut -d "v" -f 2)
} fi

echo "Installing exercism-cli: v${VERSION}"

RELEASE_URL="${GITHUB_BASE_URL}/releases/download/v${VERSION}/exercism-${VERSION}-${OS}-${ARCH}.tar.gz"
DOWNLOAD_DIR=$(mktemp -d || mktemp -d -t 'tmp')
pushd "$DOWNLOAD_DIR"
curl -sL --retry 3 "$RELEASE_URL" | tar -xz
echo "Installing to $DESTDIR"
install exercism "$DESTDIR"
popd
rm -r "$DOWNLOAD_DIR"
