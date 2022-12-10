#!/bin/bash

set -e

source dev-container-features-test-lib

check "circleci info help" bash -c "circleci --skip-update-check info --help"
check "exercism configure help" bash -c "exercism configure --help"
check "circleci location" bash -c "ls /usr/bin/circleci"
check "exercism location" bash -c "ls /usr/bin/exercism"

reportResults
