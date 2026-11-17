#!/bin/bash

dir=/etc

if [ -d $dir  ]; then
	echo $?
	echo "The directory $dir exists."
else
	echo $?
	echo "The directory $dir doesn't exist."
fi

echo "The exit code for  thist script run is $?"
