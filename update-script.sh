#!/bin/bash

#if [ -d /etc/pacman.d ]; then
	#arch linux
#	sudo pacman -Sy
#fi

#if [ -d /etc/apt ]; then
	#ubuntu
#	sudo apt update
#fi

release_file=/etc/os-release

if grep -q "Arch" $release_file; then
	sudo pacman -Sy
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file; then 
	sudo apt update
fi
