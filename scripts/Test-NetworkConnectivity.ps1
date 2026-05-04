<#
.SYNOPSIS
Tests basic network connectivity to a target host.
#>

$Target = "8.8.8.8"

Write-Host "Testing connectivity to $Target..." -ForegroundColor Cyan

Test-Connection -ComputerName $Target -Count 4

Write-Host "Network connectivity test completed." -ForegroundColor Green
