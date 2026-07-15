# Sample Output

The examples in this document are sanitized demonstrations. Actual output varies by computer, operating system, network, and environment.

---

## Test-NetworkConnectivity.ps1

### Command

```powershell
.\scripts\Test-NetworkConnectivity.ps1 `
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
.\scripts\Test-NetworkConnectivity.ps1 `
    -Target github.com `
    -Port 443 `
    -OutputPath .\reports\NetworkConnectivity.csv
```

---

## Get-NetworkConfiguration.ps1

### Command

```powershell
.\scripts\Get-NetworkConfiguration.ps1
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
.\scripts\Get-NetworkConfiguration.ps1 -IncludeDisconnected
```

### CSV Export

```powershell
.\scripts\Get-NetworkConfiguration.ps1 `
    -OutputPath .\reports\NetworkConfiguration.csv
```

---

## Test-DnsResolution.ps1

### Command

```powershell
.\scripts\Test-DnsResolution.ps1 `
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
.\scripts\Test-DnsResolution.ps1 `
    -Name internal.contoso.com `
    -Server 192.168.1.10
```

### CSV Export

```powershell
.\scripts\Test-DnsResolution.ps1 `
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
