#!/bin/bash

string="Hello"

if [[ -n $string ]]
then
    echo $string
fi

int1=2
int2=2

if [[ int1 -eq int2 ]]
then
    echo "$int1 is equal to $int2"
fi