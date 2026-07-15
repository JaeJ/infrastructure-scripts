# Infrastructure Scripts Lab Progress

This document tracks completed work and planned improvements for the Infrastructure Scripts repository.

---

## Completed

### Repository Foundation

- [x] Created infrastructure automation repository
- [x] Added PowerShell scripts folder
- [x] Added troubleshooting documentation
- [x] Added `.gitignore`
- [x] Added MIT license
- [x] Added root README

### Network Diagnostics

- [x] `Test-NetworkConnectivity.ps1`
- [x] `Get-NetworkConfiguration.ps1`
- [x] `Test-DnsResolution.ps1`
- [x] `Test-PortConnectivity.ps1`
- [x] `Get-NetworkInfo.ps1`
- [x] `Restart-NetworkAdapter.ps1`

### System Diagnostics

- [x] `Get-RunningServices.ps1`
- [x] `Get-SystemErrors.ps1`
- [x] `Get-TopProcesses.ps1`

### Documentation

- [x] Added sample output
- [x] Added scripts README
- [x] Added project changelog
- [x] Updated root README script inventory

---

## In Progress

- [ ] Test all scripts on a local Windows system
- [ ] Replace example output with sanitized real output
- [ ] Review scripts for consistent parameter validation
- [ ] Review scripts for consistent CSV export support

---

## Planned Improvements

- [ ] Add multi-computer support where appropriate
- [ ] Add VPN troubleshooting script
- [ ] Add routing-table reporting
- [ ] Add firewall profile reporting
- [ ] Add network latency reporting
- [ ] Add Pester tests
- [ ] Add screenshots of sanitized output
