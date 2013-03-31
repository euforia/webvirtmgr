#!/bin/bash

c_user=`whoami`;
if [ "$c_user" != "root" ]; then
	echo "Must be root!";
	exit -1;
fi

user2create=$1;
if [ "$user2create" == "" ]; then
	echo "\n\t$0\tusername\n";
	exit -1;
fi

if [ -e "/etc/libvirt/passwd.db" ]; then
	user_req=`sasldblistusers2 -f /etc/libvirt/passwd.db | grep {{ sasl_user }}`;
	if [ "$user_req" == "" ];then
		echo "Adding SASL user: $user2create"
		saslpasswd2 -a libvirt $user2create
	else
		echo "User already exists: $user2create"
	fi
else
	echo "Adding SASL user: $user2create"
	saslpasswd2 -a libvirt $user2create
fi


