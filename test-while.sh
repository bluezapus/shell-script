#!/bin/bash

#cek=$(curl --version)
url=https://bluezapus.cloud

#curl $url

while true; do
if curl -s --fail "$url" > /dev/null; then
	echo "website ok"
else
	echo "website off"
fi
sleep 5
done
