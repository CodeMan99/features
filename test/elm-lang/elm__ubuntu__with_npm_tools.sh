#!/bin/bash

set -e

source dev-container-features-test-lib

check "Elm-lang compiler binary is executable" test -x /usr/local/bin/elm
check "elm --version" elm --version
check "npm tool not installed: elm-format" test ! -e "$(npm prefix -g)/bin/elm-format"
check "npm tool not installed: elm-review" test ! -e "$(npm prefix -g)/bin/elm-review"
check "npm tool: elm-test" test -x "$(npm prefix -g)/bin/elm-test"

reportResults
