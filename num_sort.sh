#!/bin/bash

arr=("$@")
len=${#arr[@]}
for ((i = 0; i < len; i++))
do
	for ((j = i + 1; j < len; j++))
	do
		if ((arr[i] > arr[j]))
		then
			temp=$((arr[i]))
			arr[i]=$((arr[j]))
			arr[j]=$((temp))
		fi
	done
done
echo ${arr[@]}
