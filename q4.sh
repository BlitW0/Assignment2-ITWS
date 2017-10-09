#!/bin/bash

count=1
cat ${1} | while read line 
do
	if [ ! -z "$line" ]
	then
		echo $count\) $line
		count=$((count + 1))
	fi
done
