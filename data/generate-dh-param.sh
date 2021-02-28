#!/bin/bash

if [ -f "/etc/ssl/ffdhe4096.pem" ]; then
	echo "/etc/ssl/ffdhe4096.pem exists"
else
	echo "/etc/ssl/ffdhe4096.pem is missing"
	echo "Create Diffie–Hellman parameters"
	openssl dhparam -out /etc/ssl/ffdhe4096.pem 2048
fi