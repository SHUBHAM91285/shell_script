#!/bin/bash

echo "Enter your choice"
echo "Enter a to print date"
echo "Enter b to print list of scripts"
echo "Enter c to check the current working directory"

read choice

case $choice in
	a)
		echo "Today's date is "
		date
		echo "End of command"
		;;
	b)ls;;
	c)pwd;;
	*)echo "Please provide a valid input"
esac
