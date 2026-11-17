#!/bin/bash
#echo $? = negative

#variable paket yang dibutuhkan
package=htop
sudo apt install $package >> package_install_result.log

#kode $? untuk menentukan parameter
echo "The exit code for the package install is: $?"

if [ $? -eq 0 ]; then
#jika 0/succes
	echo "Teh installation of $package was successful."
	echo "The new command is available here:"
	which $package
else
#jika selain 0 maka berarti negativ
	echo "$package failed to install"
fi


