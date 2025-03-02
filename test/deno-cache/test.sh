#!/bin/bash

set -e

source dev-container-features-test-lib

check "Group exists" getent group deno
check "Directory /deno-dir exists" test -d "$DENO_DIR"
check "Group is set" test "$(stat --printf="%G" "$DENO_DIR")" == "deno"
check "Permissions are set" test "$(stat --printf="%a" "$DENO_DIR")" -eq 2775

reportResults
