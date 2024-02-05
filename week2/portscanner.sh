hostfile=$1
portfile=$2
#checks if both parameters are provided
if [ -z "$1" ]; then
   echo "provide necesary parameters: host file"
   exit 1
fi
if [ -z "$2" ]; then
   echo "provide necesary parameters: port file"
   exit 1
fi
echo "host,port: scan status"
for host in $(cat $hostfile); do
  for port in $(cat $portfile); do 
    timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null
  #checking if the port scan failed or not (error checking)
  if [ $? -eq 0 ]; then
      echo "$host $port: port scan successful"
  else
      echo "$host $port: port scan failed"
  fi
  done
done
