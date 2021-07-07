#!/bin/bash

# Lockfile to avoid writing on a file that has an open process, in order to avoid data corruption or deadlocks

exec 200>/tmp/${0}-lock || exec 1
flock 200 || exit 1

while true ; do
	sleep 1
done

flock -u 200
