#!/bin/bash

#sudo apt install  notexist
#echo "Hello world"
#exit 0
#echo $?

dir=/etc

if [ -d $dir  ]; then
	echo "The directory $dir exist."
	exit 0
else
	echo "The directory $Dir doesn't exist."
	exit 1
fi

echo "the exit code for this script run is: $?"
echo "You didn't see that statement."
echo "You won't see this one either."
