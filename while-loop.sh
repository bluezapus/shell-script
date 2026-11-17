#!/bin/bash

myvar=1
#-le = sama dengan kurang dari

#kondisi
while [ $myvar -le 2 ]; do
#loop start
	echo $myvar
	myvar=$(( $myvar +1 ))
	sleep 0.5
done


while [ -f ~/testfile ]; do
	echo "The test file exist."
done
echo "The file no longer exist. Exiting."

