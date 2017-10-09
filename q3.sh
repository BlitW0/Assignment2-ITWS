#!/bin/bash

grep $1 *.txt > /dev/null
code=`echo $?`
if ((code == 0))
then
	grep -c "$1" *.txt | while read a
	do
		num=`echo $a | cut -d':' -f 2`
		file=`echo $a | cut -d':' -f 1`
		if ((num > 0))
		then
			echo "$num lines in $file"
		fi
	done
else
	exit 1
fi
