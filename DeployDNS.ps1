Install-ADDSForest -DomainName companyname.com -DomainNetBIOSName COMPANY -InstallDNS
Install-WindowsFeature -Name DNS -IncludeManagementTools
Add-DnsServerPrimaryZone -NetworkID 10.1.10.0/24 -ZoneFile “10.1.10.11.in-addr.arpa.dns”
Add-DnsServerForwarder -IPAddress 8.8.8.8 -PassThru
Test-DnsServer -IPAddress 10.1.10.11 -ZoneName "VSRV.AD_DC.local"
