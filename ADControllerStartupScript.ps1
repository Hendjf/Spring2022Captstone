﻿Rename-Computer -NewName NEWDOMAINCONTROLLERNAME
New-NetIPAddress –IPAddress 192.168.1.10 -DefaultGateway 192.168.1.1 -PrefixLength 24 -InterfaceIndex (Get-NetAdapter).InterfaceIndex
Set-DNSClientServerAddress –InterfaceIndex (Get-NetAdapter).InterfaceIndex –ServerAddresses 192.168.1.10
Install-WindowsFeature -name AD-Domain-Services -IncludeManagementTools
Install-ADDSForest -DomainName companyname.com -DomainNetBIOSName COMPANY -InstallDNS
Restart-Computer
