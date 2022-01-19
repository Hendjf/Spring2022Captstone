 
 Add-DnsServerPrimaryZone -ComputerName DC03 -NetworkId "192.168.2.0/24" -ReplicationScope Forest
 Add-DnsServerResourceRecordA -Name reddeerprint01 -ZoneName corp.ad -IPv4Address 192.168.2.56
 Add-DnsServerResourceRecordCName -ZoneName corp.ad -HostNameAlias "webapp25.corp.ad" -Name "finance"
 Remove-DnsServerResourceRecord -ZoneName corp.ad -Name reddeerprint01 -RRType A
 Get-DnsServerZone -ComputerName DC03