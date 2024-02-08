param($network, $server) 

foreach ($ip in 1..254){  
   Resolve-DnsName -DnsOnly "$network,$ip -server $server -ErrorAction Ignore | Select-String -Pattern '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | where {$_.NameHost -eq ".cyber.local"} 
}
