#!/bin/bash

myVar="Hey Buddy, How are you?"

myVarLength=${#myVar}

echo "Length of string is ${myVarLength}"

echo "Upper case is ${myVar^^}"

echo "Lower case is ${myVar,,}"

#Replace something in string

newVar=${myVar/Buddy/Shubham}

echo "New string is $newVar"

#slice the string

echo "After slice ${myVar:4:5}"
