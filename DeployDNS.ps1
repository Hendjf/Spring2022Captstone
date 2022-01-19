Install-ADDSForest -DomainName companyname.com -DomainNetBIOSName COMPANY -InstallDNS
Install-WindowsFeature -Name DNS -IncludeManagementTools
Add-DnsServerPrimaryZone -NetworkID 192.168.64.0/24 -ZoneFile “192.168.64.2.in-addr.arpa.dns”
Add-DnsServerForwarder -IPAddress 8.8.8.8 -PassThru
Test-DnsServer -IPAddress 192.168.64.2 -ZoneName "corp.momco.com"
