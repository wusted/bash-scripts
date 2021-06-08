#!/bin/bash
read -p "Which command to run? " cmd;
find . -type d -print0 | while read -d '' -r dir; do
for a in "$dir"/*;
    do $cmd $a; done
done