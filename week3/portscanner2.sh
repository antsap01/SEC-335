#!/bin/bash

hostfile=$1
portfile=$2
echo "ip,port"
for ip in $(seq 1 254); do
  timeout .1 bash -c "echo >/dev/tcp/$1.$ip/$2" 2>/dev/null &&
    echo "$1.$ip,$2"
done
