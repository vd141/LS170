#!/usr/bin/bash

def greet_multiple () {
    for name in "$@"
        do
    echo "Hello $name!"
        done
}

