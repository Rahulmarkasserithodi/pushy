#!/bin/dash
# Test initializing a pushy repository

echo "Testing initializing repository..."
./pushy-init
if [ -d ".pushy" ]; then
    echo "PASS: Repository initialized."
else
    echo "FAIL: Repository not initialized."
fi

