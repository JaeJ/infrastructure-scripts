# Network Troubleshooting

## Common Commands

### Ping Test

```powershell
Test-Connection 8.8.8.8
```

### Port Testing

```powershell
Test-NetConnection google.com -Port 443
```

### DNS Resolution

```powershell
Resolve-DnsName google.com
```

### Flush DNS Cache

```powershell
ipconfig /flushdns
```

### View Network Adapters

```powershell
Get-NetAdapter
```

### Restart Network Adapter

```powershell
Restart-NetAdapter -Name "Ethernet"
```

## Common Issues

- DNS failures
- VPN instability
- Packet loss
- Incorrect gateway configuration
- Firewall restrictions
- ISP connectivity problems
