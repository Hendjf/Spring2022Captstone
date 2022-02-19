Rename-Computer -NewName ITD-F1-VSRV_AD_DC
New-NetIPAddress –IPAddress 10.1.10.11  -DefaultGateway 10.1.10.11 -PrefixLength 24 -InterfaceIndex (Get-NetAdapter).InterfaceIndex
Set-DNSClientServerAddress –InterfaceIndex (Get-NetAdapter).InterfaceIndex –ServerAddresses 10.1.10.11
Install-WindowsFeature -name AD-Domain-Services -IncludeManagementTools
Install-ADDSForest -DomainName ITD.LOCAL -DomainNetBIOSName ITD.LOCAL -InstallDNS
Restart-Computer
