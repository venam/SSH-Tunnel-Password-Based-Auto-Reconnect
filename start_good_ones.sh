#!/bin/bash

FILENAME=$1
LIMIT=$2
STARTPORT=$3
T=0
cat $FILENAME | while read LINE
do
	u=$(echo $LINE | cut -f1 -d ':')
	p=$(echo $LINE | cut -f2 -d ':')
	h=$(echo $LINE | cut -f3 -d ':')
	echo $u #username
	echo $p #password
	echo $h #host
	echo $T
	echo $LIMIT
	echo $STARTPORT
	./reconnect_ssh.sh "$p" "$STARTPORT" "$u" "$h" &
	T=`expr $T + 1`
	STARTPORT=`expr $STARTPORT + 1`
	if [ $T -gt $LIMIT ]; then
		exit;
	fi
	echo ""
done
