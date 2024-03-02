#!/bin/bash

set -x

if [[ $# -eq 0 ]]
then
	echo "No argument provided"
	exit 1
fi

echo "First argument is $1"
echo "Second argument is $2"

echo "All the arguments are - $@"
echo "Number of arguments are - $#"

for filename in $@
do
	echo "Copying file - $filename"
done
