#!/usr/bin/bash

echo "Can you enter an integer?"
read integer
if (( $integer < 20 )); then
    echo "Number is less than 20"
    if (( $integer < 10 )); then
        echo "Number is less than 10"
    fi
fi