# Troubleshooting Notes

## Network Connectivity

Common checks:

```powershell
Test-Connection 8.8.8.8
```

```powershell
Test-NetConnection google.com -Port 443
```

## DNS Troubleshooting

```powershell
Resolve-DnsName google.com
```

```powershell
ipconfig /flushdns
```

## IP Configuration

```powershell
Get-NetIPAddress
```

```powershell
ipconfig /all
```

## Event Logs

```powershell
Get-EventLog -LogName System -Newest 20 -EntryType Error
```

## Common Issues

- DNS resolution failure
- VPN connection problems
- Incorrect IP configuration
- Firewall blocking traffic
- Service failures
- Remote desktop connection issues
