#!/bin/bash

df -h | grep "/dev/sda" | awk '{if(NR>0)print}' | while read a
do
	use=`echo $a | cut -d' ' -f 5 | cut -d'%' -f 1`
	name=`echo $a | cut -d' ' -f 1`
	if [ $use -gt $1 ]
	then
		if [ $use -gt $2 ]
		then
			echo "CRITICAL, $name, $use%"
		else
			echo "WARNING, $name, $use%"
		fi
	else
		echo "OK, $name, $use%"
	fi
done
