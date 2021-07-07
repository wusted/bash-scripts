#!/bin/bash

# Parse the output of a text, for example with grep or less
if [[ -p /dev/stdin ]]; then
	while IFS= read -r LINE; do
		pipearray+=( "$LINE" )
		# OR - concatenate a string
		# echo "Line: $LINE"
	done
fi

echo ${pipearray[@]}
