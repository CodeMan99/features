#!/bin/bash

set -e

source dev-container-features-test-lib

check "circleci location" bash -c "ls /usr/local/bin/circleci"
check "version" bash -c "circleci --skip-update-check version"

reportResults
