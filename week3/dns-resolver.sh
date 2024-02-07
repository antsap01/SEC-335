#!/bin/bash

hostfile=$1
dnsserver=$2

echo "dns resolution for $1"
for ip in $(seq 1 254); do 
  nslookup "$1.$ip" "$2" | grep "name = " 
 done
