#!/bin/bash

echo "Checking for updates..."
GIT_OUTPUT=$(git pull)

if [[ "$GIT_OUTPUT" == *"Already up to date."* ]]; then
    echo "Everything is already up to date. No build needed!"
    exit 0
fi

echo "New changes detected! Rebuilding..."
docker compose up -d --build

echo "Update successfully deployed!"