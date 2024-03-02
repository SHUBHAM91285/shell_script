#!/bin/bash

#Compress the file whose size is greater than 50MB or which is created 10 days
#ago and move to archive folder.

#Variables
BASE=$1
DAYS=10
DEPTH=1
RUN=0

#Check if the directory is present or not
if [[ ! -d $BASE ]]
then
	echo "Directory does not exist: $BASE"
	exit 1
fi

#Create archive folder if not present
if [[ ! -d $BASE/archive ]]
then
	mkdir $BASE/archive
fi

#Find the list of files larger than 20 MB
for i in $(find $BASE -maxdepth $DEPTH \( -type f -size +20M -o -ctime +$DAYS \))
do
	if [[ $RUN -eq 0 ]]
	then
		echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ===> $BASE/archive"
		gzip $i || exit 1
		mv $i.gz $BASE/archive || exit 1
	fi
done
