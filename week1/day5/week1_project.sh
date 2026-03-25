#!/bin/bash

NAME="karthik"

for  NO_DAY in $(seq 1 7)
do
	mkdir /home/skilaparthi/devops-journey/practice/week1/"day $NO_DAY"
	echo "study notes for day $NO_DAY" > notes.txt
done


