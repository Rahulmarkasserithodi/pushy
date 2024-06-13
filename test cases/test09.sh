#!/bin/dash
# Test the -a flag functionality with file modifications

./pushy-init
echo "hello world" > file1.txt
./pushy-add file1.txt
./pushy-commit -m "Initial commit"
echo "modification" >> file1.txt
./pushy-commit -

