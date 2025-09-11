#!/usr/bin/bash

top=10

while [[ $top -ge 0 ]]; do
    echo $top
    (( top-- ))
done
echo "Blastoff!"