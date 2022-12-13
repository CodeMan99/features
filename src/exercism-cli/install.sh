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

apt_get_update()
{
    if [ "$(find /var/lib/apt/lists/* | wc -l)" = "0" ]; then
        echo "Running apt-get update..."
        apt-get update -y
    fi
}

# Checks if packages are installed and installs them if not
check_packages() {
    if ! dpkg -s "$@" > /dev/null 2>&1; then
        apt_get_update
        apt-get -y install --no-install-recommends "$@"
    fi
}

export DEBIAN_FRONTEND=noninteractive
check_packages curl ca-certificates

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
