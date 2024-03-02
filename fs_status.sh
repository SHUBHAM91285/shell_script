#!/bin/bash

FU=$(df -H | grep "sda2" | awk '{print $5}' | tr -d %)
TO="your email"

if [[ $FU -ge 80 ]]
then
	echo "Warning disk space is low - $FU %" | mail -s "Disk SPACE ALERT" $TO
else
	echo "You are good to go"
fi
