<#
.SYNOPSIS
Tests DNS resolution for one or more hostnames.

.DESCRIPTION
Queries DNS records and returns structured results containing resolved
addresses, DNS record type, DNS server information, and any errors.

.PARAMETER Name
One or more DNS names to resolve.

.PARAMETER Type
DNS record type. Defaults to A.

.PARAMETER Server
Optional DNS server to query.

.PARAMETER OutputPath
Optional CSV export path.

.EXAMPLE
.\Test-DnsResolution.ps1 -Name github.com

.EXAMPLE
.\Test-DnsResolution.ps1 `
    -Name github.com,microsoft.com `
    -Type A

.EXAMPLE
.\Test-DnsResolution.ps1 `
    -Name internal.contoso.com `
    -Server 10.0.0.10
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [ValidateNotNullOrEmpty()]
    [string[]]$Name,

    [Parameter()]
    [ValidateSet("A", "AAAA", "CNAME", "MX", "NS", "PTR", "TXT")]
    [string]$Type = "A",

    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [string]$Server,

    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [string]$OutputPath
)

$Results = foreach ($DnsName in $Name) {
    try {
        $Parameters = @{
            Name        = $DnsName
            Type        = $Type
            ErrorAction = "Stop"
        }

        if ($Server) {
            $Parameters.Server = $Server
        }

        $Records = Resolve-DnsName @Parameters

        foreach ($Record in $Records) {
            $ResolvedValue = switch ($Type) {
                "A"     { $Record.IPAddress }
                "AAAA"  { $Record.IPAddress }
                "CNAME" { $Record.NameHost }
                "MX"    { $Record.NameExchange }
                "NS"    { $Record.NameHost }
                "PTR"   { $Record.NameHost }
                "TXT"   { $Record.Strings -join " " }
            }

            [PSCustomObject]@{
                Name          = $DnsName
                RecordType    = $Type
                ResolvedValue = $ResolvedValue
                DnsServer     = $Server
                Success       = $true
                Error         = $null
                TestedOn      = Get-Date
            }
        }
    }
    catch {
        [PSCustomObject]@{
            Name          = $DnsName
            RecordType    = $Type
            ResolvedValue = $null
            DnsServer     = $Server
            Success       = $false
            Error         = $_.Exception.Message
            TestedOn      = Get-Date
        }
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
