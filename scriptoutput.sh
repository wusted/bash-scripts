#!/bin/bash 

## Use it with the following syntax
## scriptoutput.sh > stdout.txt 2> stderr.txt

echo "This is for Standard Output stdout"
echo "Error: This is for a fail" >&2 
