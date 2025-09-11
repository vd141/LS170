#!/usr/bin/bash

greet_multiple () {
for name in "$@"
do
    echo "Hello $name!"
done
}

greet_multiple Adam Jack Apollo