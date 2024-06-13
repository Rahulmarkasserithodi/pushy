#!/bin/dash
# Test committing files

./pushy-init
echo "hello" > testfile.txt
./pushy-add testfile.txt
./pushy-commit -m "Initial commit"

if [ -d ".pushy/commits/commit.0" ]; then
    echo "PASS: Files committed."
else
    echo "FAIL: Commit failed."
fi

