<#
.SYNOPSIS
Displays recent Windows system error logs.
#>

Write-Host "Retrieving recent system errors..." -ForegroundColor Cyan

Get-EventLog -LogName System -Newest 20 -EntryType Error |
    Select-Object TimeGenerated, Source, EventID, Message |
    Format-Table -Wrap -AutoSize

Write-Host "System error log retrieval completed." -ForegroundColor Green
