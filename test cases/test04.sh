#!/bin/dash
# Test commit log

./pushy-init
echo "hello" > a
./pushy-add a
./pushy-commit -m "Add a"
./pushy-log | grep -q 'Add a'
if [ $? -eq 0 ]; then
    echo "PASS: Commit message found in log."
else
    echo "FAIL: Commit message not found in log."
fi

