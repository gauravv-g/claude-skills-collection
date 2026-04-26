# Web Shell Detection Techniques

Comprehensive guide for detecting web shells across different platforms.

## File System Analysis

### Static File Properties

| Indicator | What to Look For |
|-----------|------------------|
| File permissions | Writable by web server user |
| Ownership | Owned by web server process |
| Timestamps | Modified during off-hours |
| Size | Unusually large source files |
| Name | Obfuscated, randomly generated |

### Content Patterns

- Command execution functions receiving user input
- Obfuscation routines (base64, gzip, rot13)
- Dynamic code evaluation (`eval`, `assert`, `create_function`)
- Obfuscated function names
- Long strings with mixed character sets

## Log Analysis

### Web Server Access Logs

```
# Suspicious URL patterns
GET /uploads/shell.php?cmd=whoami
POST /index.php?cmd=ls
GET /images/backdoor.jpg.php

# Common attack signatures
?cmd= whoami
?shell= 
?exec=
```

### Look For

- High frequency requests to single file
- Requests with unusual HTTP methods
- Large response sizes from small requests
- Requests to non-existent files that return 200

## Network-Based Detection

### Outbound Connections

Monitor for:

- Connections to known malicious IP ranges
- Unexpected DNS queries
- Non-standard ports (not 80/443)
- Long-duration connections
- Connections to Tor exit nodes

### C2 Indicators

- Long polling intervals
- Encrypted traffic to unusual destinations
- Heartbeat patterns in network traffic

## Host-Based Detection

### Process Monitoring

- Child processes spawned by web server
- Processes with network sockets
- Unusual process names

### File System Monitoring

- New files in web directories
- Modified system binaries
- Hidden files (dot files)

### User Account Monitoring

- New users or groups
- Modified sudo permissions
- SSH authorized_keys additions

## Multi-Platform Signatures

### PHP Specific

```regex
(eval|assert|system|shell_exec|exec|passthru|popen)\s*\(
\$\_(GET|POST|REQUEST)\[
```

### ASP/ASPX Specific

```regex
Process\.Start
Request\.Params
eval\s*\(
```

### JSP Specific

```regex
Runtime\.getRuntime\(\)\.exec
ProcessBuilder
```

## YARA Rules (Examples)

```yara
rule PHP_Webshell_Generic {
    strings:
        $eval = "eval("
        $base64 = "base64_decode("
        $exec_func = / (exec|shell_exec|system|passthru)\s*\(/ fullword
        $obfuscated = /[\$\@\s]{10,}/

    condition:
        filesize < 500KB and
        2 of them
}

rule Webshell_Obfuscation {
    strings:
        $encoded = /eval\s*\(\s*(base64_decode|gzinflate)/

    condition:
        filesize < 500KB and
        $encoded
}
```

## Response Procedures

1. **Isolate** - Disconnect from network
2. **Preserve** - Capture disk image and memory
3. **Analyze** - Static and dynamic analysis
4. **Eradicate** - Remove all traces
5. **Recover** - Restore from clean backups
6. **Lessons Learned** - Document and improve

## Tools

- **Static Analysis**: php malware analyzer,雀巢, YARA
- **Dynamic Analysis**: RIPS, Semgrep, CodeQL
- **Log Analysis**: ELK Stack, Splunk, grep/awk
- **Network**: Wireshark, Zeek, Suricata