#!/bin/bash

read -p "Enter your age: " age
read -p "Enter your nationality: " country

cntry=${country,,}

if [[ $age -ge 18 ]] && [[ $cntry == "india" ]]
then
	echo "You are eligible to vote"
else
	echo "You can not vote"
fi
