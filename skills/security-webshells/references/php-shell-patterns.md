# PHP Web Shell Patterns for Detection

This document catalogs common PHP web shell patterns for defensive detection purposes.

## Common Function Signatures

### Command Execution Functions

| Function | Legitimate Use | Suspicious Indicators |
|----------|----------------|----------------------|
| exec() | System utilities | User input reaching this function |
| shell_exec() | Server scripts | Backticks also present |
| system() | Admin scripts | No validation on arguments |
| passthru() | Binary output | Combined with GET/POST |
| popen() | File handles | Command injection possible |
| proc_open() | Process control | Dynamic command construction |
| pcntl_exec() | Process execution | Rare in web apps |
| assert() | Assertions | Can execute code when passed string |

### File Operations

- file_get_contents() / file_put_contents()
- readfile() / fread() / fwrite()
- unlink() - File deletion
- rmdir() - Directory removal
- copy() - File copying
- rename() - File renaming

### Network/Request Handling

- curl_exec() - HTTP requests
- fsockopen() - Socket connections
- mail() - Email exfiltration
- header() - C2 headers

## Obfuscation Patterns

### Base64 Encoding

eval(base64_decode("ZWNobyBzaGVsbGxfZXhlYygkX1BPU1RbJ2NtZCddKTs="));
eval(gzinflate(base64_decode("...")));

### String Manipulation

- str_rot13() - Caesar cipher
- chr() with concatenation
- chr(rand(...)) sequences
- Hex encoding: x65x78x65x63

### Variable Variables

dollar-dollar variable  // Double dollar sign
dollar {'expr'}   // Dynamic variable names

### Arrays as Function Names

dollar func = dollar_GET['func'];
dollar func();  // Dynamic function call

## Common Patterns

### Simple Backdoor

<?php @eval(dollar_POST['cmd']); ?>
<?php system(dollar_GET['c']); ?>

### Encrypted/Stealth Shells

Look for:

- Unusual file permissions (writable by web server)
- Files in unexpected locations (/tmp/, /var/tmp/, hidden directories)
- Large files with obfuscated content
- Files with multiple timestamp alterations

## Behavioral Indicators

1. Long-running processes - Shells often spawn persistent processes
2. Outbound connections - Unexpected network traffic
3. High CPU usage - Cryptomining or brute force
4. Unauthorized file access - Reading system files

## Detection Checklist

- [ ] Scan for eval(), assert(), create_function()
- [ ] Search for GET, POST reaching execution functions
- [ ] Check for base64_decode, gzinflate, str_rot13
- [ ] Look for dynamic function calls: dollar func = ...; dollar func()
- [ ] Analyze file hash against known malware databases
- [ ] Review web server access logs for suspicious parameters
- [ ] Check for cron jobs or scheduled tasks created by web server user
