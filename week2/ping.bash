#!/bin/bash
for ip in $(seq 2 50); do
    ping -c1 10.0.5.$ip | grep "bytes from" | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' & 
done

