#!/bin/bash
FILE="/home/skilaparthi/devops-journey/week1/day1/notes.txt"

if [ -f $FILE ]; then
	echo "File exists...here is the context"
	cat $FILE
else 
	echo " file not exists"
fi
