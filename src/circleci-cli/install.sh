#!/usr/bin/env bash

set -e

export VERSION="${VERSION:-latest}"
export DESTDIR="${DESTDIR:-/usr/local/bin}"

if [[ "$VERSION" = "latest" ]]; then {
    # The remote script treats empty input as "latest"
    unset VERSION
} fi

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
check_packages curl

curl -fLSs https://raw.githubusercontent.com/CircleCI-Public/circleci-cli/master/install.sh | bash
