#!/usr/bin/env bash

set -e

VERSION="${VERSION:-0.19.1}"
ELM_PREFIX="${ELMPREFIX:-/usr/local/bin}"
INSTALL_FORMAT="${INSTALLFORMAT:-true}"
INSTALL_REVIEW="${INSTALLREVIEW:-true}"
INSTALL_TEST="${INSTALLTEST:-true}"

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

curl --location --output elm.gz "https://github.com/elm/compiler/releases/download/${VERSION}/binary-for-linux-64-bit.gz"
gunzip elm.gz
install elm "${ELM_PREFIX}"

declare -a PACKAGES

if [[ "${INSTALL_FORMAT}" == "true" ]]; then
    PACKAGES+=("elm-format")
fi

if [[ "${INSTALL_REVIEW}" == "true" ]]; then
    PACKAGES+=("elm-review")
fi

if [[ "${INSTALL_TEST}" == "true" ]]; then
    PACKAGES+=("elm-test")
fi

if command -v npm &> /dev/null && [[ ${#PACKAGES[@]} -gt 0 ]]; then
    npm install -g "${PACKAGES[@]}"
fi
