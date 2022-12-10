#!/usr/bin/env bash

set -e

export VERSION="${VERSION:-latest}"
export DESTDIR="${DESTDIR:-/usr/local/bin}"

if [[ "$VERSION" = "latest" ]]; then {
    # The remote script treats empty input as "latest"
    unset VERSION
} fi

curl -fLSs https://raw.githubusercontent.com/CircleCI-Public/circleci-cli/master/install.sh | bash
