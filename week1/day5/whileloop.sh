#!/bin/bash
count=1

while [ "$count" -le 5 ]
do
	echo "count is : $count"
	count=$((count + 1))
done
echo "loop finished" 
