#!/bin/bash
for ip in $(seq 2 50); do 
    nmap -sn "10.0.5.$ip" | grep "report for" | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'
done 
