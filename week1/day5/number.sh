#!/bin/bash

AGE=10

if [ $AGE -lt 18 ]; then
	echo "$AGE is less than 18, not an adult"
else 
	echo "$AGE is greater than 18, an adult"
fi
