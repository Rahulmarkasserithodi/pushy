#!/bin/dash
# Test deleting a file and committing the change

./pushy-init
echo "to be deleted" > delete.me
./pushy-add delete.me
./pushy-commit -m "Add file"
rm delete.me
./pushy-add delete.me
./pushy-commit -m "Delete file"
if [ ! -f ".pushy/commits/commit.1/delete.me" ]; then
    echo "PASS: File deletion committed."
else
    echo "FAIL: File deletion not committed."
fi

