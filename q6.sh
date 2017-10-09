#!/bin/bash

echo -n "Please enter monthly salary: " 
read sal
if ((sal*12 > 300000))
then
	tax=$(echo "scale=4; ($sal*3*12)/10" | bc)
	echo "TAX PAYMENT REQUIRED: $tax"
else
	echo "NO TAX PAYMENT REQUIRED"
fi
