<#
.SYNOPSIS
Retrieves Windows network adapter configuration.

.DESCRIPTION
Collects adapter status, IP addresses, default gateways, DNS servers,
MAC addresses, and link speed from the local computer.

.PARAMETER IncludeDisconnected
Includes disconnected network adapters.

.PARAMETER OutputPath
Optional CSV export path.

.EXAMPLE
.\Get-NetworkConfiguration.ps1

.EXAMPLE
.\Get-NetworkConfiguration.ps1 -IncludeDisconnected
#>

[CmdletBinding()]
param(
    [Parameter()]
    [switch]$IncludeDisconnected,

    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [string]$OutputPath
)

try {
    $Adapters = Get-NetAdapter -ErrorAction Stop

    if (-not $IncludeDisconnected) {
        $Adapters = $Adapters |
            Where-Object Status -eq "Up"
    }

    $Results = foreach ($Adapter in $Adapters) {
        $IpConfiguration = Get-NetIPConfiguration `
            -InterfaceIndex $Adapter.IfIndex `
            -ErrorAction SilentlyContinue

        $DnsServers = Get-DnsClientServerAddress `
            -InterfaceIndex $Adapter.IfIndex `
            -AddressFamily IPv4 `
            -ErrorAction SilentlyContinue

        [PSCustomObject]@{
            ComputerName   = $env:COMPUTERNAME
            InterfaceAlias = $Adapter.Name
            Description    = $Adapter.InterfaceDescription
            Status         = $Adapter.Status
            MacAddress     = $Adapter.MacAddress
            LinkSpeed      = $Adapter.LinkSpeed
            IPv4Address    = $IpConfiguration.IPv4Address.IPAddress -join ", "
            DefaultGateway = $IpConfiguration.IPv4DefaultGateway.NextHop -join ", "
            DnsServers     = $DnsServers.ServerAddresses -join ", "
        }
    }

    if ($OutputPath) {
        $Results |
            Export-Csv `
                -Path $OutputPath `
                -NoTypeInformation `
                -Encoding UTF8
    }

    $Results
}
catch {
    Write-Error "Unable to retrieve network configuration. $($_.Exception.Message)"
}
