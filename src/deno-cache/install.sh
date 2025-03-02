#!/usr/bin/env bash

set -e

GROUP=deno

echo "Creating cache directory: $DENO_DIR"
mkdir --parents "$DENO_DIR"

echo "Creating user group: $GROUP"
groupadd --force --key GID_MIN=1993 "$GROUP"

echo "Assigning group to cache directory..."
chgrp --changes --recursive "$GROUP" "$DENO_DIR"

echo "Assigning permissions with sticky group..."
chmod --changes --recursive 2775     "$DENO_DIR"

echo "Appending group ${GROUP@Q} to user..."
if [[ "$USERNAME" == "automatic" ]]; then
    usermod --append --groups "$GROUP" "$_REMOTE_USER"
elif [[ -n "$USERNAME" && "$USERNAME" != "root" ]]; then
    usermod --append --groups "$GROUP" "$USERNAME"
fi
