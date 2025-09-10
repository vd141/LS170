#!/usr/bin/bash

echo "What's your name?"
read name

if [[ -n $name ]]
then
    echo "Your name is $name"
else
    echo "No name provided"
fi