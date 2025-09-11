#!/usr/bin/bash

filename=$1

if [[ -x $filename ]]; then
    echo "File is executable"
else
    echo "File is not executable"
fi