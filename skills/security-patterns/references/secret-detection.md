# Secret Detection Techniques
## Static Analysis Approaches
### Regex-Based Detection
- Pattern matching with predefined regex for known secret types
- Low computational cost
- High false positive rate requires validation
- Best for structured secrets (API keys, tokens)

### Entropy Analysis
```
H = -Σ p(x) log2 p(x)
```
- Calculate Shannon entropy of strings
- High entropy (>4.5) indicates random/secret data
- Useful for detecting unknown secret types
- Combined with regex for better precision

### Format-Based Validation
- Some secrets have specific format constraints
- Example: AWS keys must start with `AKIA`
- Example: Credit cards pass Luhn algorithm

## Content Scanning
### Log File Analysis
- Scan application logs for sensitive data exposure
- Look for patterns in stack traces
- Check debug output for credentials
- Monitor for data leakage in error messages

### Source Code Scanning
- Search for hardcoded credentials
- Check for commented-out secrets
- Find secrets in configuration files
- Detect secrets in test code

### Git History Analysis
- Use `git log -p` to review commit history
- Search for patterns in historical commits
- Identify accidental secret commits
- Use `git grep` for pattern matching

## Validation Techniques
### Luhn Algorithm (Credit Cards)
```python
def luhn_check(card_number):
    digits = [int(d) for d in card_number.replace(' ', '')]
    checksum = 0
    for i, d in enumerate(reversed(digits)):
        if i % 2 == 1:
            d *= 2
            if d > 9:
                d -= 9
        checksum += d
    return checksum % 10 == 0
```

### Email Validation
```regex
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}
```

### Phone Number Patterns
```regex
\+?[0-9]{1,3}[-. ]?\(?[0-9]{1,4}\)?[-. ]?[0-9]{1,4}[-. ]?[0-9]{1,9}
```

### SSN Pattern (US)
```regex
[0-9]{3}-[0-9]{2}-[0-9]{4}
```

### IP Address Patterns
#### IPv4
```regex
(?:[0-9]{1,3}\.){3}[0-9]{1,3}
```

#### IPv6
```regex
(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}
```

## Infrastructure Scanning
### AWS
- Check for exposed `.aws/credentials`
- Scan for `AKIA` patterns in screenshots
- Verify S3 bucket ACLs and policies

### Docker
- Scan Dockerfile for embedded secrets
- Check container environment variables
- Review.dockerignore effectiveness

### CI/CD Pipelines
- Review pipeline logs for secret exposure
- Check build artifacts for sensitive data
- Validate secret management in pipeline config

## Tools
### Pre-commit Hooks
- Scan commits before they are pushed
- Use tools like `detect-secrets`, `gitguardian`
- Prevent accidental secret exposure

### Secret Scanning Services
- GitHub Secret Scanning
- GitLab Secret Detection
- AWS CodeCommit scanning
- VS Code extensions for secret detection

## Best Practices
1. **Never log secrets** — Implement redaction in logging
2. **Use secret managers** — HashiCorp Vault, AWS Secrets Manager
3. **Rotate frequently** — Minimize exposure window
4. **Scan regularly** — Automated scanning in CI/CD
5. **Educate teams** — Preventative training
6. **Incident response** — Have revocation procedures ready

## Detection Checklist
- [ ] API keys and tokens
- [ ] Database credentials
- [ ] Private keys (SSH, GPG)
- [ ] Session tokens
- [ ] Authorization headers
- [ ] Basic auth credentials
- [ ] Cloud provider credentials
- [ ] Payment processor keys
- [ ] Personal identifiable information (PII)
- [ ] Financial data
- [ ] Health information (PHI)
- [ ] Passwords in plaintext

## False Positive Handling
1. Use context clues to validate matches
2. Check for common test/fixture patterns
3. Verify against known secret databases
4. Apply multiple validation techniques
5. Manual review for ambiguous cases

## Compliance Considerations
### PCI-DSS
- Credit card detection is critical
- Strict requirements for data handling
- Regular scanning mandated

### HIPAA
- Medical records and PHI protection
- Patient data in logs is violation
- Audit trail requirements

### GDPR
- Personal data detection
- Right to be forgotten implications
- Data minimization enforcement