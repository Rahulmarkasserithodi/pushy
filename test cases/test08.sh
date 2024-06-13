#!/bin/dash
# Test modifying a file and committing the change

./pushy-init
echo "original content" > modify.txt
./pushy-add modify.txt
./pushy-commit -m "Original commit"
echo "modified content" > modify.txt
./pushy-add modify.txt
./pushy-commit -m "Modify file"
modified_content=$(cat .pushy/commits/commit.1/modify.txt)
if [ "$modified_content" = "modified content" ]; then
    echo "PASS: File modification committed."
else
    echo "FAIL: File modification not committed."
fi

