#!/bin/bash

set -e

source dev-container-features-test-lib

check "exercism location" bash -c "ls /usr/local/bin/exercism"
check "version" bash -c "exercism version"

reportResults
