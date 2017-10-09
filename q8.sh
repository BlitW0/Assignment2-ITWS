#!/bin/bash

arr=($@)
len=${#arr[@]}
for ((i = 0; i < len; i++))
do
	if [ -e "${arr[$i]}" ]
	then
		if [ -f "${arr[$i]}" ]
		then
			out=`ls -l ${arr[$i]}`
			echo $out
		fi
	fi
done

