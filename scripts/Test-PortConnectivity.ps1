<#
.SYNOPSIS
Tests connectivity to a remote host and port.
#>

$ComputerName = "google.com"
$Port = 443

Write-Host "Testing connectivity to $ComputerName on port $Port..." -ForegroundColor Cyan

Test-NetConnection -ComputerName $ComputerName -Port $Port

Write-Host "Port connectivity test completed." -ForegroundColor Green
