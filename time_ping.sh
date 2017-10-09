#!/bin/bash

i=m
j=31
k=1
ping -c ${1} google.com | awk '{if($0 ~ /bytes from/){print strftime()" -- "$0}else print}' | while read a
do
	if ((j < 38))
	then
		echo -e "\e[1;$j$i $a \e[0m"
	else
		j=31
		echo -e "\e[1;$j$i $a \e[0m"
	fi
	j=$((j + 1))
done
