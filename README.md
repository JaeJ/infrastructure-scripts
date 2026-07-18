# Infrastructure Scripts

https://img.shields.io/badge/PowerShell-Automation-blue
https://img.shields.io/badge/Infrastructure-Support-blue
https://img.shields.io/badge/Status-Active-success

## Overview

This repository contains infrastructure automation, monitoring, networking, troubleshooting, and reporting scripts designed for Windows environments and enterprise IT operations.

The goal of this project is to build practical infrastructure engineering solutions that improve diagnostic capabilities, simplify troubleshooting, automate routine tasks, and demonstrate real-world systems administration skills.

---

## Business Problem

Infrastructure teams frequently spend significant time diagnosing connectivity issues, collecting system information, validating network services, and troubleshooting operational incidents.

Manual investigation can lead to inconsistent results, slower resolution times, and increased operational overhead.

This repository demonstrates repeatable PowerShell solutions that help standardize infrastructure diagnostics, improve visibility, and reduce troubleshooting time.

---

## Objectives

- Improve infrastructure troubleshooting efficiency
- Automate network diagnostics and reporting
- Build reusable infrastructure utilities
- Develop practical PowerShell automation skills
- Standardize operational workflows
- Maintain professional documentation practices

---

## Skills Demonstrated

### Infrastructure Operations

- Infrastructure Monitoring
- Infrastructure Diagnostics
- Operational Support
- Incident Investigation
- Systems Administration

### Networking

- DNS Troubleshooting
- TCP/IP Connectivity Testing
- Port Validation
- Network Adapter Management
- Infrastructure Analysis

### PowerShell Automation

- PowerShell Scripting
- Reporting
- Automation
- Script Documentation
- Troubleshooting Workflows

### Support Engineering

- Root Cause Analysis
- Event Log Investigation
- Service Validation
- Performance Monitoring
- Operational Support

---

## Repository Structure

```text
infrastructure-scripts/
│
├── .github/
│   └── workflows/
│       └── powershell-validation.yml
│
├── docs/
│   ├── architecture.md
│   ├── lab-progress.md
│   ├── network-troubleshooting.md
│   ├── project-roadmap.md
│   └── troubleshooting-notes.md
│
├── examples/
│   └── sample-output.md
│
├── images/
│   └── README.md
│
├── scripts/
│   ├── Get-NetworkConfiguration.ps1
│   ├── Get-NetworkInfo.ps1
│   ├── Get-RunningServices.ps1
│   ├── Get-SystemErrors.ps1
│   ├── Get-TopProcesses.ps1
│   ├── Restart-NetworkAdapter.ps1
│   ├── Test-DnsResolution.ps1
│   ├── Test-NetworkConnectivity.ps1
│   └── Test-PortConnectivity.ps1
│
├── tests/
│   ├── README.md
│   ├── Test-NetworkConnectivity.Tests.ps1
│   ├── Test-DnsResolution.Tests.ps1
│   └── Get-SystemErrors.Tests.ps1
│
├── CHANGELOG.md
├── LICENSE
├── README.md
└── .gitignore
```

---

## Documentation

Additional project documentation is available within the `/docs` folder.

Available documentation includes:

- Architecture Overview
- Project Roadmap
- Lab Progress Tracking
- Network Troubleshooting Guide
- Troubleshooting Notes

Additional resources:

- Example outputs: `/examples/sample-output.md`
- Repository visuals: `/images`

---

## Project Scripts

| Script | Description |
|----------|-------------|
| Test-NetworkConnectivity.ps1 | Tests network connectivity and availability. |
| Test-PortConnectivity.ps1 | Tests TCP port accessibility. |
| Test-DnsResolution.ps1 | Validates DNS resolution for specified hosts. |
| Get-NetworkInfo.ps1 | Reports Windows network configuration details. |
| Get-NetworkConfiguration.ps1 | Collects network adapter and configuration information. |
| Restart-NetworkAdapter.ps1 | Restarts a Windows network adapter. |
| Get-RunningServices.ps1 | Lists active Windows services. |
| Get-SystemErrors.ps1 | Retrieves recent Windows system errors. |
| Get-TopProcesses.ps1 | Reports processes consuming the most resources. |

---

## Testing

This repository includes Pester test files used to support automated validation and future quality assurance initiatives.

Current test coverage includes:

- Test-NetworkConnectivity.ps1
- Test-DnsResolution.ps1
- Get-SystemErrors.ps1

Planned testing enhancements:

- Parameter validation testing
- Output validation
- Error handling verification
- Automated execution through GitHub Actions

---

## How to Run

### Requirements

- Windows PowerShell 5.1 or PowerShell 7+
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

---

## Example Output

Sample output can be found in:

```text
examples/sample-output.md
```

---

## Technologies Used

- PowerShell
- Windows 10
- Windows 11
- Windows Server
- Git
- GitHub
- VS Code

---

## Notes

These scripts are intended for:

- Windows Systems Administration
- Infrastructure Support
- Network Troubleshooting
- Desktop Engineering
- IT Operations
- Infrastructure Engineering

Review all scripts before running them in a production environment.

Do not store passwords, API keys, customer information, or other sensitive data within this repository.

---

## Recruiter Summary

This repository demonstrates practical infrastructure engineering and systems administration skills focused on networking, diagnostics, troubleshooting, reporting, and operational support.

The scripts and supporting documentation showcase capabilities commonly associated with:

- Systems Administration
- Infrastructure Engineering
- Technical Operations
- Cloud Operations
- Network Support
- IT Automation

---

## Author

**Jae McNeal**

Senior Systems Administrator

PowerShell • Azure • Microsoft 365 • Active Directory • Infrastructure Automation • Windows Server