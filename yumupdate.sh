#!/bin/sh

read -p "Enter package name : " name
        ICMD='yum update -y $name'

for host in $(cat servers.txt)
        do ssh "$host" "$ICMD" >"output.$host"; done
