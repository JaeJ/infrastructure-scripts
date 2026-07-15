<#
.SYNOPSIS
Tests DNS resolution, ICMP connectivity, and TCP port access.

.DESCRIPTION
Performs common network troubleshooting checks against one or more
targets and returns structured results.

.PARAMETER Target
One or more DNS names or IP addresses.

.PARAMETER Port
TCP port to test. Defaults to 443.

.PARAMETER OutputPath
Optional CSV export path.

.EXAMPLE
.\Test-NetworkConnectivity.ps1 -Target server01

.EXAMPLE
.\Test-NetworkConnectivity.ps1 `
    -Target server01,server02 `
    -Port 3389
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [ValidateNotNullOrEmpty()]
    [string[]]$Target,

    [Parameter()]
    [ValidateRange(1, 65535)]
    [int]$Port = 443,

    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [string]$OutputPath
)

$Results = foreach ($Item in $Target) {
    $ResolvedAddresses = @()
    $DnsResolved       = $false

    try {
        $ResolvedAddresses = Resolve-DnsName `
            -Name $Item `
            -Type A `
            -ErrorAction Stop |
            Select-Object -ExpandProperty IPAddress

        $DnsResolved = $true
    }
    catch {
        Write-Verbose "DNS resolution failed for $Item."
    }

    $PingSucceeded = Test-Connection `
        -ComputerName $Item `
        -Count 1 `
        -Quiet `
        -ErrorAction SilentlyContinue

    $TcpTest = Test-NetConnection `
        -ComputerName $Item `
        -Port $Port `
        -WarningAction SilentlyContinue

    [PSCustomObject]@{
        Target            = $Item
        DnsResolved       = $DnsResolved
        ResolvedAddresses = $ResolvedAddresses -join ", "
        PingSucceeded     = $PingSucceeded
        Port              = $Port
        TcpSucceeded      = $TcpTest.TcpTestSucceeded
        RemoteAddress     = $TcpTest.RemoteAddress
        TestedOn          = Get-Date
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
