#!/bin/bash
echo "counting up"

for num in $(seq 1 5)
do
	echo "Number: $num "
done

echo "counting down"

for num in $(seq 5 -1 1)
do 
	echo "Number: $num "
done
