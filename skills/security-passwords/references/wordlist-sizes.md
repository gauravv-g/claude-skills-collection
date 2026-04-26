# Wordlist Sizes and Use Cases

## Small Wordlists (< 1,000 passwords)

| File | Size | Use Case |
|------|------|----------|
| `500-worst-passwords.txt` | 500 | Quick audit of most obvious weak passwords |
| `top-20.txt` | 20 | Rapid spray attack testing |
| `default-router-passwords.txt` | ~100 | IoT device testing |
| `common-admin-passwords.txt` | ~200 | Privileged account testing |

**Best for**: Initial reconnaissance, CTF challenges, quick policy checks

## Medium Wordlists (1,000 - 100,000 passwords)

| File | Size | Use Case |
|------|------|----------|
| `10k-most-common.txt` | 10,000 | Standard credential stuffing |
| `darkc0de.txt` | ~10,000 | Medium-intensity testing |
| `honeypot.txt` | ~15,000 | Academic/research testing |
| `NCSC-100k.txt` | 100,000 | Comprehensive policy auditing |

**Best for**: Thorough password policy validation, authorized penetration testing

## Large Wordlists (100,000+ passwords)

| File | Size | Use Case |
|------|------|----------|
| `rockyou.txt` | ~14,000,000 | Full breach compilation testing |
| `hashcat-rules.txt` | ~100,000 | Rule-based mutation testing |
| `probable-variants.txt` | ~500,000 | Password pattern analysis |
| ` breached-passwords.txt` | varies | Real-world credential matching |

**Best for**: Offline hash cracking, comprehensive security assessments

## Specialized Wordlists

| File | Size | Use Case |
|------|------|----------|
| `leetspeak.txt` | ~1,000 | Complexity bypass testing |
| `keyboard-walks.txt` | ~500 | Pattern detection evasion |
| `bible-names.txt` | ~3,000 | Contextual password testing |
| `year-suffixes.txt` | ~50 | Temporal pattern testing |

## Wordlist Sources

- **SecLists**: `https://github.com/danielmiessler/SecLists`
- **Probable Wordlist**: `https://github.com/berzerk0/Probable-Wordlists`
- **CeWL**: Generate custom wordlists from target websites

## Selection Guidelines

1. **CTF/Challenges**: 500-worst-passwords or top-20
2. **Quick Audit**: 10K most common
3. **Comprehensive Test**: NCSC 100K
4. **Full Assessment**: rockyou.txt + rules
5. **IoT Testing**: Default router passwords