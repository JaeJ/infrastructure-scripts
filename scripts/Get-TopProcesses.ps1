<#
.SYNOPSIS
Displays top CPU-consuming processes.
#>

Write-Host "Retrieving top CPU processes..." -ForegroundColor Cyan

Get-Process |
Sort-Object CPU -Descending |
Select-Object -First 10 Name, CPU, WorkingSet |
Format-Table -AutoSize

Write-Host "Top processes report completed." -ForegroundColor Green
