# Infrastructure Scripts

This folder contains PowerShell scripts for network diagnostics, Windows troubleshooting, system monitoring, and infrastructure support.

## Requirements

Depending on the script, you may need:

- Windows PowerShell 5.1 or PowerShell 7+
- Administrator permissions
- Network access to the target
- Windows networking modules
- PowerShell remoting for remote operations

## Scripts

| Script | Purpose |
|---|---|
| `Test-NetworkConnectivity.ps1` | Tests DNS resolution, ICMP connectivity, and TCP port access. |
| `Get-NetworkConfiguration.ps1` | Reports adapter status, addresses, gateways, DNS servers, and link information. |
| `Test-DnsResolution.ps1` | Tests DNS record resolution for one or more names. |
| `Test-PortConnectivity.ps1` | Tests whether a TCP port is reachable. |
| `Get-NetworkInfo.ps1` | Collects basic network configuration information. |
| `Restart-NetworkAdapter.ps1` | Restarts a selected Windows network adapter. |
| `Get-RunningServices.ps1` | Lists running Windows services. |
| `Get-SystemErrors.ps1` | Retrieves recent Windows system errors. |
| `Get-TopProcesses.ps1` | Reports processes consuming the most system resources. |

## Usage

Open PowerShell in the repository root:

```powershell
Set-Location .\infrastructure-scripts
