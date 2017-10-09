#!/bin/bash

if [ $# -eq 1 ]
then
	if [ -e $1 ]
	then
		if [ -f $1 ]
		then
			chmod u+x "$1"
			echo "File is now executable"
		else
			echo "Invalid input"
		fi
	else
		echo "The file $1 does not exist"
	fi
else
	echo "Usage: ./makeExec.sh <filename>"
fi
