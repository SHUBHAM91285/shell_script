#!/bin/bash

FILE="/home/shubham/myscripts/names.txt"

for name in $(cat $FILE)
do
	echo "Name is $name"
done
