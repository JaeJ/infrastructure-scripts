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

```markdown
## Project Scripts

| Script | Description |
|---|---|
| `Test-NetworkConnectivity.ps1` | Tests DNS, ping, and TCP connectivity. |
| `Get-NetworkConfiguration.ps1` | Reports Windows network adapter configuration. |
| `Test-DnsResolution.ps1` | Tests DNS records and captures resolution failures. |
| `Test-PortConnectivity.ps1` | Tests TCP port accessibility. |
| `Get-NetworkInfo.ps1` | Collects basic network configuration details. |
| `Restart-NetworkAdapter.ps1` | Restarts a Windows network adapter. |
| `Get-RunningServices.ps1` | Reports currently running Windows services. |
| `Get-SystemErrors.ps1` | Retrieves recent system errors for troubleshooting. |
| `Get-TopProcesses.ps1` | Reports processes with high CPU or memory use. |

## How to Run

### Prerequisites

- Windows PowerShell 5.1 or PowerShell 7+
- Windows operating system
- Administrator access for scripts that change system configuration

Clone or download the repository, open PowerShell in the repository folder, and run a script:

```powershell
.\scripts\Test-NetworkConnectivity.ps1 `
    -Target github.com `
    -Port 443
