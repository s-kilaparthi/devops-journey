#!/bin/bash
SCORE=95

if [ $SCORE -gt 90 ];then 
	echo "Excellent!"
elif [ $SCORE -ge 75 ]; then
	echo "good job"
elif [ $SCORE -ge 60 ]; then
	echo  "good"
else 
	echo "need to improve"
fi
