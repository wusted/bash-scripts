#!/bin/bash

## Use it with this syntax
# checkuser <username>

if grep $1 /etc/passwd ;then
	echo "$1 exists!"
else
	echo "$1 doesn't exist"
fi
	
