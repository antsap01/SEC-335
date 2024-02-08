param($network, $server)

foreach ($ip in 1..254) {
    $Results=Resolve-DnsName -DnsOnly "$network.$ip" -Server "$server" -ErrorAction Ignore | Select-Object -ExpandProperty Namehost


     if ($Results -ne $null){
     echo "$network.$ip $Results"  
     }    
}
