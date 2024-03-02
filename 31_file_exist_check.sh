#!/bin/bash

FILEPATH=/home/shubham/myscripts/test.csv

if [[ -f $FILEPATH ]]
then
	echo "File exist"
else
	echo "File does not exist"
	exit 1
fi
