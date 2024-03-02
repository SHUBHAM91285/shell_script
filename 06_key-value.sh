#!/bin/bash

declare -A myArray

myArray=([name]=Shubham [age]=22 [city]=Paris)

echo "My name is ${myArray[name]}"

echo "My age is ${myArray[age]}"

echo "I want to visit ${myArray[city]}"
