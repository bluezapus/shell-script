#!/bin/bash

release_file=/etc/os-release
#log
logfile=/var/log/updater.log
#log khusus kesalahan
errorlog=/var/log/updater_error.log


if grep -q "Arch" $release_file; then
        sudo pacman -Sy 1>>$logfile 2>>$errorlog
	if [ $? -ne 0 ]; then
		echo "An error occurred, please check the $errorlog file."
	fi
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file; then
        sudo apt update 1>>$logfile 2>>$errorlog
	if [ $? -ne 0 ]; then
                echo "An error occurred, please check the $errorlog file."
        fi
fi
