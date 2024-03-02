#!/bin/bash

#Script should be executed with sudo/root access
if [[ "${UID}" -ne 0 ]]
then
	echo "Please run with sudo or root access"
	exit 1
fi

#User should provide atleast 1 argument else guide him for it
if [[ "${#}" -lt 1 ]]
then
	echo "Usage: ${0} USER_NAME [COMMENT]..."
	exit 1
fi

#Store 1st argument in username
USER_NAME="${1}"

#For more than 1 argument store other in comment
shift
COMMENT="${@}"

#Create a password
PASSWORD=$(date +%s%N)

#Create a user
useradd -c "${COMMENT}" -m $USER_NAME

if [[ $? -ne 0 ]]
then
	echo "The account could not be created"
	exit 1
fi

#Set password
echo $PASSWORD | passwd --stdin $USER_NAME

if [[ $? -ne 0 ]]
then
	echo "Password could not be set"
	exit 1
fi

#Force password change on first login
passwd -e $USER_NAME

#Display name password and the hostname
echo
echo "Name: $USER_NAME"
echo
echo "Password: $PASSWORD"
echo
echo "$(hostname)"
