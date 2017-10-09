#!/bin/bash

len=${#1}
p=$len
for ((j = len; j > 0; j--,p--))
do
	q=$((len - j + 1))
	d=`echo $1 | head -c${q} | tail -c1`
	if ((p == 4))
	then
		if ((d <= 3))
		then
			for ((i = 1; i <= d; i++))
			do
				echo -n "M"
			done
		fi
	elif ((p == 3))
	then
		if ((d < 4))
		then
			for ((i = 1; i <= d; i++))
			do
				echo -n "C"
			done
		elif ((d == 4))
		then
		
			echo -n "CD"
		elif (( (d < 9)&&(d > 4) ))
		then
			echo -n "D"
			for ((k = 1; k < d%5 + 1; k++))
			do
				echo -n "C"
			done
		elif ((d == 9))
		then
			echo -n "CM"
		fi
	elif ((p == 2))
	then
        	if ((d < 4))
        	then
                	for ((i = 1; i <= d; i++))
                	do
                        	echo -n "X"
                	done
		elif ((d == 4))
		then
			echo -n "XL"
		elif (( (d < 9)&&(d > 4) ))
	 	then
                	echo -n "L"
                	for ((k = 1; k < d%5 + 1; k++))
                	do
                        	echo -n "X"
                	done     
		elif ((d == 9))
		then
			echo -n "XC"
        	fi
	elif ((p == 1))
	then
        	if ((d < 4))
        	then
                	for ((i = 1; i <= d; i++))
                	do
                        	echo -n "I"
                	done
		elif ((d == 4))
		then
			echo -n "IV"
		elif (( (d < 9)&&(d > 4) ))
        	then
                	echo -n "V"
                	for ((k = 1; k < d%5 + 1; k++))
                	do
                        	echo -n "I"
                	done     
		elif ((d == 9))
		then
			echo -n "IX"
        	fi
	i=1
	k=1
fi
done
echo
