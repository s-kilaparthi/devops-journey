#!/bin/bash
NAME="karthik"

for NO_DAY in $(seq 1 7)
do
    mkdir -p /home/skilaparthi/devops-journey/practice/week1/day$NO_DAY
    echo "study notes for day$NO_DAY" > /home/skilaparthi/devops-journey/practice/week1/day$NO_DAY/notes.txt
done

if [ -d "/home/skilaparthi/devops-journey/practice/week1/day7" ]; then
    echo "All 7 days created successfully $NAME"
else
    echo "Something went wrong"
fi
