<#
.SYNOPSIS
Displays basic network adapter and IP address information.
#>

Write-Host "Collecting network information..." -ForegroundColor Cyan

Get-NetIPAddress |
    Select-Object InterfaceAlias, IPAddress, AddressFamily, PrefixLength |
    Format-Table -AutoSize

Write-Host "Network information collection completed." -ForegroundColor Green
