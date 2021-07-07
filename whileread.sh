#!/bin/bash

# Read all the lines of a multiline file
#while IFS= read -r LINE; do
#	echo "$LINE"
#done < "$1"

# Read all the lines of a multiline file and replace ":" delimiter with " "
#while IFS= read -r LINE; do
#	echo "$LINE" | sed 's/:/ /g'
#done < "$1"

# Read all the lines of a multine file and show only the selected columns
while IFS=: read -r user pass uid gid gecos home shell; do	# This example is with /etc/passwd
	echo "$user $shell"					# Here we select the desired columns
done < "$1"	
