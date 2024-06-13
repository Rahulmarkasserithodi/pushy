#!/bin/dash
# Test adding a file to the index

./pushy-init
echo "hello" > testfile.txt
./pushy-add testfile.txt

if [ -f ".pushy/index/testfile.txt" ]; then
    echo "PASS: File added to index."
else
    echo "FAIL: File not added to index."
fi

