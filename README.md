# Infrastructure Scripts

![PowerShell](https://img.shields.io/badge/PowerShell-Automation-blue)
![Infrastructure](https://img.shields.io/badge/Infrastructure-Support-blue)
![Status](https://img.shields.io/badge/Status-Active-success)

This repository contains infrastructure automation, monitoring, networking, and troubleshooting scripts for Windows and cloud environments.

## Purpose

The goal of this repository is to build practical infrastructure engineering, systems administration, automation, and remote support skills.

## Skills Practiced

- PowerShell Automation
- Infrastructure Monitoring
- Network Troubleshooting
- Event Log Analysis
- DNS Troubleshooting
- Connectivity Testing
- Windows Administration
- Remote Support
- VPN Troubleshooting
- Infrastructure Diagnostics

## Repository Structure

```text
infrastructure-scripts/
├── docs/
│   ├── lab-progress.md
│   ├── network-troubleshooting.md
│   └── troubleshooting-notes.md
├── examples/
│   └── sample-output.md
├── scripts/
│   ├── README.md
│   ├── Get-NetworkConfiguration.ps1
│   ├── Get-NetworkInfo.ps1
│   ├── Get-RunningServices.ps1
│   ├── Get-SystemErrors.ps1
│   ├── Get-TopProcesses.ps1
│   ├── Restart-NetworkAdapter.ps1
│   ├── Test-DnsResolution.ps1
│   ├── Test-NetworkConnectivity.ps1
│   └── Test-PortConnectivity.ps1
├── .gitignore
├── CHANGELOG.md
├── LICENSE
└── README.md
```

---

## Project Scripts

| Script | Description |
|---------|-------------|
| `Test-NetworkConnectivity.ps1` | Tests DNS resolution, ICMP connectivity, and TCP port access. |
| `Get-NetworkConfiguration.ps1` | Reports adapter status, IP addresses, gateways, DNS servers, and link information. |
| `Test-DnsResolution.ps1` | Tests DNS resolution for one or more hostnames. |
| `Test-PortConnectivity.ps1` | Tests TCP port accessibility. |
| `Get-NetworkInfo.ps1` | Collects Windows network configuration information. |
| `Restart-NetworkAdapter.ps1` | Restarts a Windows network adapter. |
| `Get-RunningServices.ps1` | Reports currently running Windows services. |
| `Get-SystemErrors.ps1` | Retrieves recent Windows system errors. |
| `Get-TopProcesses.ps1` | Reports processes consuming the most CPU or memory. |

---

## How to Run

### Requirements

- Windows PowerShell 5.1 or PowerShell 7
- Administrator permissions (recommended)
- Appropriate network connectivity
- PowerShell execution policy allowing local scripts

### Open the Repository

```powershell
Set-Location .\infrastructure-scripts
```

### Run a Script

```powershell
.\scripts\Test-NetworkConnectivity.ps1 `
    -Target github.com `
    -Port 443
```

### View Help

```powershell
Get-Help .\scripts\Test-NetworkConnectivity.ps1 -Full
```

### Example Output

See:

```text
examples/sample-output.md
```

for sanitized sample output from every script.

---

## Notes

These scripts are intended for:

- Windows Systems Administration
- Infrastructure Support
- Network Troubleshooting
- Desktop Engineering
- IT Operations

Review every script before running it in a production environment.

Do not store passwords, API keys, customer information, or other sensitive data in this repository.
