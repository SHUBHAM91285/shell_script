#!/bin/bash

#Array
myArray=(1 2 3.55 Hello "Hello Buddy")

echo "All elements of array are ${myArray[*]}"

echo "Elements at the fourth index is ${myArray[3]}"

echo "Total number of elements in an array is ${#myArray[*]}"

<<comment
Elements starting from index 2 
and total number of elements 
we need is 2
comment

echo "Elements from 2-3 ----->  ${myArray[*]:2:2}"

#Elements starting from index 2

echo "Elements starting from index 2 are ${myArray[*]:2}"

#update the value of array
myArray+=(yash ray 22)

echo "New Array is ${myArray[*]}"

