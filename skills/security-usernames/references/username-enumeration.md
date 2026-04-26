# Username Enumeration Testing Techniques

Techniques for identifying valid usernames during authorized security testing.

## Legal Notice

**Only test systems you own or have explicit written authorization to test.** Unauthorized username enumeration may violate computer crime laws.

## Common Enumeration Techniques

### 1. Error Message Analysis

Analyze different responses for valid vs invalid usernames:

```
Invalid username: "User not found" / "Account does not exist"
Valid username: "Invalid password" / "Authentication failed"
```

- Test multiple inputs and compare error message wording
- Note timing differences (valid users may authenticate differently)
- Check for different HTTP status codes

### 2. Response Timing

- Valid accounts may have slightly different response times
- Apply statistical analysis for larger user lists
- Consider network latency variations

### 3. Account Lockout Responses

- Some systems reveal valid usernames through lockout messages
- "Your account has been locked" vs "Invalid username"
- Check if lockout threshold differs for valid vs invalid

### 4. Registration / Signup Forms

- Attempt registration with target usernames
- "Username already taken" reveals existence
- Check available verification flows

### 5. Forgot Password Flow

- Submit password reset for known and unknown usernames
- Different responses may indicate valid accounts
- Look for "email sent" vs "user not found"

### 6. API Response Analysis

- Compare JSON/XML responses
- Check for subtle differences in structure
- Look at response codes and headers

## Common Username Patterns

### Default Accounts

```
admin, administrator, root, user, test
guest, default, operator, super
apache, nginx, mysql, postgres, www-data
```

### Naming Conventions

```
firstname.lastname
firstname
initials
firstname.lastname.year
f.lastname
```

### Pattern-Based

```
john.doe
j.doe
johnd
doej
```

## Defensive Bounties

Good systems to test:

1. Login forms with rate limiting
2. Systems using generic error messages
3. Password reset flows with constant timing
4. Lockout notifications that don't reveal validity

## Testing Checklist

- [ ] Document all target systems and scope
- [ ] Check for rate limiting before testing
- [ ] Record all responses (valid/invalid)
- [ ] Note timing differences
- [ ] Compare error message wording
- [ ] Check HTTP status codes
- [ ] Test with single username per request
- [ ] Respect account lockout thresholds
- [ ] Document findings securely