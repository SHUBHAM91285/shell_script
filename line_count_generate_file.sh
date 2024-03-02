#!/bin/bash

get_files(){
	files="`ls *.txt`"
}

count_lines () {
	local f=$1
	l=`wc -l $f | sed 's/^\([0-9]*\).*$/\1/'`
}

if [[ $# -ge 1 ]]
then
	echo "Usage: Provide argument with $0 file ...."
	exit 1
fi

echo "$0 counts the lines of code"
l=0
n=0
s=0

get_files

for f in $files
do
	count_lines $f
	echo "$f: $l"
	n=$[ $n + 1 ]
	s=$[ $n + $l ]
done

echo "$n files in total, with $s lines in total"
