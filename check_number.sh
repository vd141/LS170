#!/usr/bin/bash

arg=$1

if (( $arg < 10 )); then
    echo "$arg is less than 10."
elif (( 10 <= $arg && $arg <= 20 )); then
    echo "$arg is between 10 and 20."
else
    echo "$arg is greater than 20."
fi