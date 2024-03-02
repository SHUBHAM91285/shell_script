#!/bin/bash

#Script should be executed with sudo root access
if [[ "${UID}" -ne 1000 ]]
then
	echo "Please run with sudo or root id"
 	exit 1
fi

#User should provide atleast one argument as username else guide him
if [[ "${#}" -lt 1 ]]
then
	echo "Usage: ${0} USER_NAME [COMMENT]..."
	echo "Create a User with name USER_NAME and comments field of COMMENT"
	exit 1
fi

#Store first argument as username
USER_NAME="${1}"

#In case of more than 1 argument, store it as comment
shift
COMMENT="${@}"

#Create a password
PASSWORD=$(date +%s%N)

#Create the User
useradd -c "$COMMENT" -m $USER_NAME

#Check if the user is successfully created or not
if [[ $? -ne 0 ]]
then
	echo "The account is not created"
	exit 1
fi

#Set the password for user
echo $PASSWORD | passwd --stdin $USER_NAME

#Check if password is successfully set or not
if [[ $? -ne 0 ]]
then
	echo "Password could not be set"
	exit 1
fi

#Force the password change on first login
passwd -e $USER_NAME

#Display username, password,and host where username was created
echo
echo "Username: $USER_NAME"
echo
echo "Password: $PASSWORD"
echo
echo $(hostname)
