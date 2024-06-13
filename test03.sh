#!/bin/dash
# Test committing with no changes

./pushy-init
./pushy-commit -m "Empty commit" > /dev/null 2>&1
result=$?

if [ $result -eq 1 ]; then
    echo "PASS: Correctly identified nothing to commit."
else
    echo "FAIL: Incorrect behavior with no changes."
fi

