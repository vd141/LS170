#!/usr/bin/bash

count=0
max=5

until (( count == max )); do
    touch file_$count.txt
    (( count++ ))
done