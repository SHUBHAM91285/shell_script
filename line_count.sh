#!/bin/bash

exec 10<&0

exec < $1
in=$1

file="current_line.txt"
count=0

while read LINE
do
	(( count++ ))
	echo $LINE >> $file
	if [[ $? -ne 0 ]]
	then
		echo "Error in writing the file ${file}; check its permissions!"
	fi
done

echo "Number of lines: $count"
echo "The contents of the file is: `cat ${file}`"

echo "Expected number of lines: `wc -l $in`"

exec 0<&10 10<&-
