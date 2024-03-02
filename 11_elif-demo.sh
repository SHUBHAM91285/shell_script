#!/bin/bash

read -p "Enter your marks: " marks

if [[ $marks -ge 80 ]]
then
	echo "You Passed with 1st Division"
elif [[ $marks -ge 60 ]]
then
	echo "You Passed with 2nd Division"
elif [[ $marks -ge 40 ]]
then
	echo "You Passed by 3rd Division"
else
	echo "You are fail"
fi
