#/bin/bash 
for ip in $(seq 2 50); do 
  echo $(fping -c1 "10.0.5.$ip" 2>/dev/null | grep "64 bytes" | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')
done
