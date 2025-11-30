#!/bin/bash

echo "enter a number"
read number

if [ $number -gt 10 ]; then
	echo "number is greater than 10"
else 
	echo "number is 10 or less"
fi
