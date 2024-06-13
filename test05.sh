#!/bin/dash
# Test add-commit option

./pushy-init
echo "new file" > newfile.txt
./pushy-commit -a -m "Add new file" > /dev/null 2>&1
if [ -d ".pushy/commits/commit.0" ]; then
    echo "PASS: Add-commit option works."
else
    echo "FAIL: Add-commit option failed."
fi

