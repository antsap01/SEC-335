param($network, $server) 

foreach ($ip in 1..254){  
   Resolve-DnsName -DnsOnly "$network,$ip -server $server -ErrorAction Ignore | Select-String -Pattern '\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?(\.|$)){4}\b' | Where-Object {$_.NameHost '.cyber.local'} 
}
