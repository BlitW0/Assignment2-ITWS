#!/bin/bash

echo -n "Please enter your name: "
read uname
echo -n "Please enter your birthdate: "
read bdate

byr=`echo $bdate | cut -d'-' -f 1`
bmnth=`echo $bdate | cut -d'-' -f 2`
bdy=`echo $bdate | cut -d'-' -f 3`

bmnth=${bmnth#0}
bdy=${bdy#0}

cyr=$(date +%Y)
cmnth=$(date +%m)
cdy=$(date +%d)

cmnth=${cmnth#0}
cdy=${cdy#0}

if [[ $cmnth -eq $bmnth && $cdy -eq $bdy ]]
then
	age=$((cyr - byr))
	echo "Happy Birthday, $uname. You are $age years old today!"
fi

