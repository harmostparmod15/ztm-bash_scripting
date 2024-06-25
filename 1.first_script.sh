#!/bin/bash
mkdir -p dir1
# This is a comment
echo "Hello from world of bash " > dir1/hello.txt
: '
this 
is 
a 
multi line
comment
'
tree .
cat dir1/hello.txt
