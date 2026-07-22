#!/bin/bash

mkdir -p /home/student/honeypot-group-1a/src/on_connect
if [ "$(ls -A ./on_connect)" ]; then
    rm -f /home/student/honeypot-group-1a/src/on_connect/*
fi

for i in {4..5}
do
    cp /home/student/honeypot-group-1a/src/on_connect.sh /home/student/honeypot-group-1a/src/on_connect/on_connect_"$i".sh
    sudo chmod 777 /home/student/honeypot-group-1a/src/on_connect/on_connect_"$i".sh
done
