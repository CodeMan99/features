#!/bin/bash

set -e

source dev-container-features-test-lib

check "circleci location" bash -c "ls /usr/bin/circleci"
check "exercism location" bash -c "ls /usr/bin/exercism"
check "circleci setup help" bash -c "circleci --skip-update-check setup --help | cat"
check "exercism configure help" bash -c "exercism configure --help"

reportResults
