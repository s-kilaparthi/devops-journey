#!/bin/bash
NAME="karthik"
DAYS_STUDIED=10

if [ "$DAYS_STUDIED" -ge 7 ]; then
	echo "Great consistency $NAME"
elif [ "$DAYS_STUDIED" -ge 3 ]; then
	echo "Good progress $NAME"
else
	echo "you need to study more $NAME"
fi
