<#
.SYNOPSIS
Restarts a network adapter.
#>

$AdapterName = "Ethernet"

Write-Host "Restarting network adapter: $AdapterName" -ForegroundColor Yellow

Restart-NetAdapter -Name $AdapterName

Write-Host "Network adapter restart completed." -ForegroundColor Green
