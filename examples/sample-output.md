# FILE: examples/sample-output.md

# Sample Output

The examples in this document are sanitized demonstrations. Actual output varies by system, network, and environment.

---

## Test-NetworkConnectivity.ps1

### Command

```powershell
.\Test-NetworkConnectivity.ps1 `
    -Target github.com,microsoft.com `
    -Port 443
```

### Example Output

```text
Target            : github.com
DnsResolved       : True
ResolvedAddresses : 140.82.112.4
PingSucceeded     : True
Port              : 443
TcpSucceeded      : True
RemoteAddress     : 140.82.112.4
TestedOn          : 7/14/2026 8:15:10 PM

Target            : microsoft.com
DnsResolved       : True
ResolvedAddresses : 20.112.250.133
PingSucceeded     : True
Port              : 443
TcpSucceeded      : True
RemoteAddress     : 20.112.250.133
TestedOn          : 7/14/2026 8:15:12 PM
```

### CSV Export

```powershell
.\Test-NetworkConnectivity.ps1 `
    -Target github.com `
    -Port 443 `
    -OutputPath .\reports\NetworkConnectivity.csv
```

---

## Get-NetworkConfiguration.ps1

### Command

```powershell
.\Get-NetworkConfiguration.ps1
```

### Example Output

```text
ComputerName   : SERVER01
InterfaceAlias : Ethernet
Description    : Intel(R) Ethernet Connection
Status         : Up
MacAddress     : 00-11-22-33-44-55
LinkSpeed      : 1 Gbps
IPv4Address    : 192.168.1.25
DefaultGateway : 192.168.1.1
DnsServers     : 192.168.1.10, 192.168.1.11
```

### Include Disconnected Adapters

```powershell
.\Get-NetworkConfiguration.ps1 -IncludeDisconnected
```

### CSV Export

```powershell
.\Get-NetworkConfiguration.ps1 `
    -OutputPath .\reports\NetworkConfiguration.csv
```

---

## Test-DnsResolution.ps1

### Command

```powershell
.\Test-DnsResolution.ps1 `
    -Name github.com,microsoft.com
```

### Example Output

```text
Name          : github.com
RecordType    : A
ResolvedValue : 140.82.112.4
DnsServer     :
Success       : True
Error         :
TestedOn      : 7/14/2026 8:25:17 PM

Name          : microsoft.com
RecordType    : A
ResolvedValue : 20.112.250.133
DnsServer     :
Success       : True
Error         :
TestedOn      : 7/14/2026 8:25:18 PM
```

### Query a Specific DNS Server

```powershell
.\Test-DnsResolution.ps1 `
    -Name internal.contoso.com `
    -Server 192.168.1.10
```

### CSV Export

```powershell
.\Test-DnsResolution.ps1 `
    -Name github.com,microsoft.com `
    -OutputPath .\reports\DnsResolution.csv
```

---

## Test-PortConnectivity.ps1

### Example Output

```text
ComputerName : SERVER01
RemotePort   : 3389
TcpSucceeded : True
RemoteAddress: 192.168.1.25
```

---

## Get-NetworkInfo.ps1

### Example Output

```text
ComputerName : SERVER01
Adapter      : Ethernet
IPv4Address  : 192.168.1.25
Gateway      : 192.168.1.1
DnsServers   : 192.168.1.10, 192.168.1.11
```

---

## Get-SystemErrors.ps1

### Example Output

```text
TimeCreated : 7/14/2026 7:42:20 PM
LogName     : System
EventID     : 7031
Level       : Error
Provider    : Service Control Manager
Message     : The example service terminated unexpectedly.
```

---

## Get-TopProcesses.ps1

### Example Output

```text
ProcessName     CPU      MemoryMB
-----------     ---      --------
powershell      125.44   310.25
chrome          98.12    825.70
explorer        33.87    145.40
```

---

## Get-RunningServices.ps1

### Example Output

```text
Name       DisplayName                       Status
----       -----------                       ------
WinRM      Windows Remote Management         Running
W32Time    Windows Time                      Running
Spooler    Print Spooler                     Running
```

---

## Restart-NetworkAdapter.ps1

### Example Output

```text
Disabling network adapter: Ethernet
Enabling network adapter: Ethernet
Network adapter restarted successfully.
```

# FILE: docs/lab-progress.md

# Infrastructure Scripts Lab Progress

This document tracks completed work and planned improvements for the Infrastructure Scripts repository.

---

## Completed

### Repository Foundation

* [x] Created infrastructure automation repository
* [x] Added PowerShell scripts folder
* [x] Added troubleshooting documentation
* [x] Added `.gitignore`
* [x] Added MIT license
* [x] Added root README

### Network Diagnostics

* [x] `Test-NetworkConnectivity.ps1`
* [x] `Get-NetworkConfiguration.ps1`
* [x] `Test-DnsResolution.ps1`
* [x] `Test-PortConnectivity.ps1`
* [x] `Get-NetworkInfo.ps1`
* [x] `Restart-NetworkAdapter.ps1`

### System Diagnostics

* [x] `Get-RunningServices.ps1`
* [x] `Get-SystemErrors.ps1`
* [x] `Get-TopProcesses.ps1`

### Documentation

* [x] Added sample output
* [x] Added scripts README
* [x] Added project changelog
* [x] Updated root README script inventory

---

## In Progress

* [ ] Test all scripts on a local Windows system
* [ ] Replace example output with sanitized real output
* [ ] Review scripts for consistent parameter validation
* [ ] Review scripts for consistent CSV export support

---

## Planned Improvements

* [ ] Add multi-computer support where appropriate
* [ ] Add VPN troubleshooting script
* [ ] Add routing-table reporting
* [ ] Add firewall profile reporting
* [ ] Add network latency reporting
* [ ] Add Pester tests
* [ ] Add screenshots of sanitized output

# FILE: scripts/README.md

# Infrastructure Scripts

This folder contains PowerShell scripts for network diagnostics, Windows troubleshooting, system monitoring, and infrastructure support.

## Requirements

Depending on the script, you may need:

* Windows PowerShell 5.1 or PowerShell 7+
* Administrator permissions
* Network access to the target
* Windows networking modules
* PowerShell remoting for remote operations

## Scripts

| Script                         | Purpose                                                                         |
| ------------------------------ | ------------------------------------------------------------------------------- |
| `Test-NetworkConnectivity.ps1` | Tests DNS resolution, ICMP connectivity, and TCP port access.                   |
| `Get-NetworkConfiguration.ps1` | Reports adapter status, addresses, gateways, DNS servers, and link information. |
| `Test-DnsResolution.ps1`       | Tests DNS record resolution for one or more names.                              |
| `Test-PortConnectivity.ps1`    | Tests whether a TCP port is reachable.                                          |
| `Get-NetworkInfo.ps1`          | Collects basic network configuration information.                               |
| `Restart-NetworkAdapter.ps1`   | Restarts a selected Windows network adapter.                                    |
| `Get-RunningServices.ps1`      | Lists running Windows services.                                                 |
| `Get-SystemErrors.ps1`         | Retrieves recent Windows system errors.                                         |
| `Get-TopProcesses.ps1`         | Reports processes consuming the most system resources.                          |

## Usage

Open PowerShell in the repository root.

```powershell
Set-Location .\infrastructure-scripts
```

Run a script:

```powershell
.\scripts\Test-NetworkConnectivity.ps1 `
    -Target github.com `
    -Port 443
```

View command help when comment-based help is available:

```powershell
Get-Help .\scripts\Test-NetworkConnectivity.ps1 -Full
```

## Safety

Review scripts before running them.

Do not store:

* Passwords
* API keys
* VPN credentials
* Private production addresses
* Customer or employer system information

# ROOT README: replace the existing structure/script area with this

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

## Project Scripts

| Script                         | Description                                         |
| ------------------------------ | --------------------------------------------------- |
| `Test-NetworkConnectivity.ps1` | Tests DNS, ping, and TCP connectivity.              |
| `Get-NetworkConfiguration.ps1` | Reports Windows network adapter configuration.      |
| `Test-DnsResolution.ps1`       | Tests DNS records and captures resolution failures. |
| `Test-PortConnectivity.ps1`    | Tests TCP port accessibility.                       |
| `Get-NetworkInfo.ps1`          | Collects basic network configuration details.       |
| `Restart-NetworkAdapter.ps1`   | Restarts a Windows network adapter.                 |
| `Get-RunningServices.ps1`      | Reports currently running Windows services.         |
| `Get-SystemErrors.ps1`         | Retrieves recent system errors for troubleshooting. |
| `Get-TopProcesses.ps1`         | Reports processes with high CPU or memory use.      |

## How to Run

### Prerequisites

* Windows PowerShell 5.1 or PowerShell 7+
* Windows operating system
* Administrator access for scripts that change system configuration

Clone or download the repository, open PowerShell in the repository folder, and run a script:

```powershell
.\scripts\Test-NetworkConnectivity.ps1 `
    -Target github.com `
    -Port 443
```

See the [`examples/sample-output.md`](examples/sample-output.md) file for sanitized examples.

# FILE: CHANGELOG.md

# Changelog

All notable changes to this project will be documented in this file.

---

## Foundation

### Added

* Added initial infrastructure automation scripts.
* Added network troubleshooting documentation.
* Added repository README, license, and `.gitignore`.

---

## Network Diagnostics Expansion

### Added

* Added `Test-NetworkConnectivity.ps1`.
* Added DNS resolution testing.
* Added ICMP connectivity testing.
* Added TCP port testing.
* Added `Get-NetworkConfiguration.ps1`.
* Added adapter, address, gateway, and DNS reporting.
* Added `Test-DnsResolution.ps1`.
* Added support for multiple DNS record types.
* Added optional DNS server selection.
* Added optional CSV export where supported.

### Documentation

* Added `examples/sample-output.md`.
* Added `docs/lab-progress.md`.
* Added `scripts/README.md`.
* Updated the root README script inventory and repository structure.
