#!/bin/sh

# closfleuri.carrard.org|90.44.178.125|http://freedns.afraid.org/dynamic/update.php?N1RmVXFuZTVXYkI5MzNxTUMwc0hTeWxIOjEzMjgwMDUz

WANIPFILE="/etc/wanip.txt"
CURRENT_IP=`curl -s icanhazip.com`
LAST_IP=`cat $WANIPFILE`

if [ "$CURRENT_IP" != "$LAST_IP" ]
then
	echo "Update WAN IP to $CURRENT_IP"
	curl -s http://freedns.afraid.org/dynamic/update.php?N1RmVXFuZTVXYkI5MzNxTUMwc0hTeWxIOjEzMjgwMDUz
	echo -n "$CURRENT_IP" > $WANIPFILE
else
	echo "WAN IP up to date !"
fi

