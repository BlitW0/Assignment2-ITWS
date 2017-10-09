#!/bin/bash

for ((i = 1; i <= 10; i++))
do
	c=$((i*i))
	echo "$c"
done

for ((i = 1; i <= 10; i++))
do
	c=1
	for ((j = 1; j <= i; j++))
	do
		c=$((c*i))
	done
	echo "$c"
done

a=0
b=1
c=$((a + b))
while ((c <= 100))
do
	c=$((a + b))
	if ((c%2 != 0))
	then
		echo "$c"
	fi
	a=$b
	b=$c
done
