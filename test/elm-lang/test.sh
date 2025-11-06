#!/bin/bash

set -e

source dev-container-features-test-lib

check "Elm-lang compiler binary is executable" test -x /usr/local/bin/elm
check "elm --version" elm --version

reportResults
