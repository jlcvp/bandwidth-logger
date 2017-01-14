#!/bin/bash
if [ "$(whoami)" != "root" ]; then
	echo "Sorry, you are not root."
	exit 1
fi

INTERFACE=eth0  # Put your interface name here
TDFS=P    #tcpdump traffic direction filter switch (some distributions are P others are Q)
export DBNAME=networklog #databse name
export DBUSER=mysql #database user
export DBPASS=0000 #database password



tcpdump -i $INTERFACE -l -e -n -q -$TDFS out | ./networklogger_up  &
tcpdump -i $INTERFACE -l -e -n -q -$TDFS in | ./networklogger_down &

echo "Logging" + $INTERFACE

wait
