# API Key Patterns and Regexes
## Cloud Provider Keys
### AWS Access Key ID
```
AKIA[0-9A-Z]{16}
```
- Pattern: `AKIA` prefix followed by 16 uppercase alphanumeric characters
- Example: `AKIAIOSFODNN7EXAMPLE`

### AWS Secret Access Key
```
[A-Za-z0-9/+=]{40}
```
- 40-character base64 string
- Usually paired with AWS Access Key ID

### Google API Key
```
AIza[0-9A-Za-z_-]{35}
```
- Pattern: `AIza` prefix followed by 35 characters

### Google OAuth
```
[0-9]+-[0-9A-Za-z_]{32}\.apps\.googleusercontent\.com
```
- Format: `number-id.apps.googleusercontent.com`

## Payment Processor Keys
### Stripe
```
sk_live_[0-9a-zA-Z]{24,}
pk_live_[0-9a-zA-Z]{24,}
sk_test_[0-9a-zA-Z]{24,}
pk_test_[0-9a-zA-Z]{24,}
```
- Live keys: `sk_live_` or `pk_live_` prefix
- Test keys: `sk_test_` or `pk_test_` prefix

### PayPal
```
[A-Za-z0-9_-]{52}
```
- 52-character pattern for PayPal credentials

## Version Control Tokens
### GitHub Personal Access Token
```
ghp_[0-9a-zA-Z]{36,}
ghp_[0-9a-zA-Z]{16}
gho_[0-9a-zA-Z]{36,}
ghs_[0-9a-zA-Z]{36,}
ghr_[0-9a-zA-Z]{36,}
```
- `ghp_`: Personal Access Tokens
- `gho_`: OAuth Access Tokens
- `ghs_`: GitHub App Server-to-Server tokens
- `ghr_`: GitHub App Refresh tokens

### GitLab Personal Access Token
```
glpat-[0-9a-zA-Z_-]{20,}
```
- Pattern: `glpat-` prefix

## Communication Platform Tokens
### Slack
```
xox[baprs]-[0-9a-zA-Z-]{10,48}
```
- `xoxb-`: Bot tokens
- `xoxp-`: User tokens
- `xoxa-`: App tokens
- `xoxr-`: Refresh tokens
- `xoxs-`: Session tokens

### Discord
```
[MN][A-Za-z0-9_-]{23,}\.[A-Za-z0-9_-]{6}\.[A-Za-z0-9_-]{27,}
```
- Bot tokens: `M` prefix
- User tokens: `N` prefix

## AI/ML API Keys
### OpenAI
```
sk-[0-9A-Za-z_-]{48,}
sk-proj-[0-9A-Za-z_-]{48,}
```
- Standard: `sk-` prefix
- Project keys: `sk-proj-` prefix

### Anthropic
```
sk-ant-[0-9a-zA-Z_-]{51,}
```
- Pattern: `sk-ant-` prefix

## Generic Secret Patterns
### Generic API Key
```
[aA][pP][iI][-_]?[kK][eE][yY].*['"][0-9a-zA-Z_-]{20,}['"]
[aA][pP][iI][-_]?[kK][eE][yY].*\=[0-9a-zA-Z_-]{20,}
```

### Generic Secret
```
[sS][eE][cC][rR][eE][tT].*['"][0-9a-zA-Z_-]{8,}['"]
[pP][aA][sS][sS][wW][oO][rR][dD].*['"][0-9a-zA-Z_-]{8,}['"]
```

### Private Key
```
-----BEGIN (RSA |DSA |EC |OPENSSH |PGP )?PRIVATE KEY-----
```
- PEM-encoded private key headers

## Database Connection Strings
### PostgreSQL
```
postgresql://[a-zA-Z0-9_-]+:[^@]+@[a-zA-Z0-9_.-]+:[0-9]+/[a-zA-Z0-9_]+
```

### MySQL
```
mysql://[a-zA-Z0-9_-]+:[^@]+@[a-zA-Z0-9_.-]+:[0-9]+/[a-zA-Z0-9_]+
```

### MongoDB
```
mongodb(\+srv)?://[a-zA-Z0-9_-]+:[^@]+@[a-zA-Z0-9_.-]+(:[0-9]+)?(/[a-zA-Z0-9_.-]+)?
```

## Environment Variable Patterns
### .env files
```
^[A-Z_][A-Z0-9_]*=.*$
```
- Common pattern: uppercase with underscores

## High Entropy String Detection
### Generic High Entropy
```
[0-9a-zA-Z_+=/]{32,}
```
- Useful for finding algorithmic detected secrets
- Entropy threshold: >4.5 bits per character

## Notes
- Always validate matches in context
- Many patterns may produce false positives
- Consider entropy analysis for unknown secret types
- Test against known positive/negative samples