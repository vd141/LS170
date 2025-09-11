#!/usr/bin/bash

counter=0

until (( counter == 5 ))
do
    echo $counter
    (( counter++ ))
done