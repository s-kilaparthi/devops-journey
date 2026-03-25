#!/bin/bash
AGE=15
EXPERIENCE=2

if  [ $AGE -ge 18 ] && [ $EXPERIENCE -gt 1 ]; then
	echo "qualified"
else
	echo "Not qualified"
fi
