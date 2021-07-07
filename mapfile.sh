#!/bin/bash

# Another method to display the contents of a file to further manipulate

declare -a passarray 
mapfile passarray < "$1"

echo ${passarray[@]}
