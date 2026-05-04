<#
.SYNOPSIS
Displays currently running Windows services.
#>

Write-Host "Retrieving running services..." -ForegroundColor Cyan

Get-Service |
Where-Object {$_.Status -eq "Running"} |
Select-Object Name, DisplayName, Status |
Format-Table -AutoSize

Write-Host "Running services report completed." -ForegroundColor Green
