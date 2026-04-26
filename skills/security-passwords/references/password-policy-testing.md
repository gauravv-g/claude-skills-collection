# Password Policy Testing Methodology

## Overview

Password policy testing evaluates the effectiveness of organizational password requirements against real-world attack patterns.

## Testing Methodology

### 1. Policy Review

- Extract current password policy requirements (length, complexity, rotation)
- Document allowed/denied character classes
- Identify any password history or account lockout policies

### 2. Wordlist Selection

| Policy Strength | Recommended Wordlist |
|-----------------|---------------------|
| Weak (min 6 chars, no complexity) | 500 worst passwords |
| Moderate (min 8 chars, some complexity) | 10K most common |
| Strong (min 12 chars, full complexity) | 100K NCSC list |

### 3. Testing Process

1. **Audit Phase**: Test against known weak passwords in your user base
2. **Spray Phase**: Attempt common passwords across multiple accounts (with authorization)
3. **Complexity Phase**: Test against variation patterns (Password1!, Password2024!)
4. **Analysis Phase**: Measure percentage of weak passwords discovered

### 4. Common Weakness Patterns

- Year suffixes: `Password2024`, `Admin2023`, `Welcome2024`
- Keyboard walks: `qwerty`, `asdf`, `zxcv`, `1qaz2wsx`
- Substitution leetspeak: `P@ssw0rd`, `L3tm3in`, `H4ck3r`
- Context-specific: company name, product, sport team
- Seasonal: month names, holiday themes

### 5. Recommendations

- Enforce minimum 12-character passwords
- Implement passphrases (multiple random words)
- Use password managers instead of complexity rules
- Enable MFA wherever possible
- Monitor for breach compilations containing your domain

## Tools for Testing

- `hashcat` - GPU-accelerated password cracking
- `john` - John the Ripper for rule-based attacks
- `hydra` - Network login brute-forcer
- `cewl` - Custom wordlist generator from target content