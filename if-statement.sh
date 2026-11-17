#!/bin/bash

mynum=300

#-eq samadengan
#-ne tidak sama dengan

if [ $mynum -eq 200  ]; then
	echo "the condition is true."
else
	echo "the condition is false."
fi

#===========
# -f = file
#-d = direktori 


if [ -f ~/myfile ]; then
	echo "the file exist."
else
	echo "the file not exist."
fi


#=============
command=/usr/bin/htop

if [ -f $command ]; then
	echo "$command is available, let's run it..."
else
	echo "$command is NOT available, installing it..."
	sudo apt update && sudo apt install -y htop
fi

$command
