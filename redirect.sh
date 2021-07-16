#!/bin/bash

echo Just '>' ---------------------------------
find /path -name name > file.out
echo Just '2>' ---------------------------------
find /path -name name 2> errors.out
echo Both '&>' ---------------------------------
find /path -name name &> both.out
