#!/usr/bin/bash

listnum="1 2 3 4 5 6 7 8 9 10"

for number in $listnum; do
    if [[ $(( number % 2 )) -eq 0 ]]; then
        echo "Number $number is even."
    fi
    if (( number % 2 != 0 )); then
        echo "Number $number is odd."
    fi
done