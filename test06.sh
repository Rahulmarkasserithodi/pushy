#!/bin/dash
# Test showing file contents from a commit

./pushy-init
echo "hello" > a
./pushy-add a
./pushy-commit -m "Add a"
output=$(./pushy-show 0:a)
if [ "$output" = "hello" ]; then
    echo "PASS: Correct file content shown."
else
    echo "FAIL: Incorrect file content shown."
fi

