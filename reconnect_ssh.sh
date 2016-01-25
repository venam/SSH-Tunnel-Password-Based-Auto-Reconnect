#!/bin/bash

p=$1
STARTPORT=$2
u=$3
h=$4

while true; do command sshpass -p "$p" ssh -o StrictHostKeyChecking=no -C -N -D $STARTPORT "$u@$h" "$@"; [ $? -ne 255 ] && break || sleep 2; done
