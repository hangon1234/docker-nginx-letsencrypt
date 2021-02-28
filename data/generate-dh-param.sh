#!/bin/bash

if [ -f "/etc/ssl/ffdhe2048.pem" ]; then
	echo "/etc/ssl/ffdhe2048.pem exists"
else
	echo "/etc/ssl/ffdhe2048.pem is missing"
	echo "Create Diffie–Hellman parameters"
	openssl dhparam -out /etc/ssl/ffdhe2048.pem 2048
fi