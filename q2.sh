#!/bin/bash

cnt=0
ls |{ while read b
do
	if [ -d $b ]
	then
		dir[$cnt]=$b
		fl[$cnt]=`find $b -type f | wc -l`
		sf[$cnt]=0
		for a in `find $b -type f -printf "%k "`
		do
			sf[$cnt]=$((${sf[$cnt]}+$a))
			cnt=$(($cnt+1))
		done
	fi
done

max=0
for ((p = 0; p < $cnt; p++))
do
	for ((j = 0; j < $cnt; j++))
	do
		if ((${sf[$j]} > ${sf[$max]}))
		then
			max=$j
		fi
	done
	echo "${dir[$max]}	${sf[$max]}K"
	p[$max]=-1
done

echo
echo

max=0
for ((p = 0; p < $cnt; p++))
do
	for ((j = 0; j < $cnt; j++))
	do
		if ((${fl[$j]} > ${fl[$max]}))
		then
			max=$j
		fi
	done
	echo "${dir[$max]}	${fl[$max]}"
	fl[$max]=-1
done
}

