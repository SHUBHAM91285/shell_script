#!/bin/bash

if [[ $# -lt 0 ]]
then
	echo "Usage: $0 file ...."
	exit 1
fi

echo "$0 counts the lines of code"
l=0
n=0
s=0

for f in $*
do
	if [ -O $f ]
	then
		l=`wc -l $f | sed 's/^\([0-9]*\).*$/\1/'`
		echo "$f:$l"
		n=$[ $n + 1 ]
		s=$[ $n + $l ]
	else
		continue
	fi
done

echo "$n files contain $s words"
