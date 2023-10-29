#!/bin/sh
ip_address=$1
port=1814
# nc "$ip_address" "$port"
echo "some message" | nc -vv "$ip_address" "$port"
