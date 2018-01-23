Lack of Clickjacking Protection
===============================

Related Session
---------------

[../sessions/clickjacking.md](../sessions/clickjacking.md)

[![Hacker101 - Clickjacking](https://img.youtube.com/vi/jcp5t8PsMsY/0.jpg)](https://www.youtube.com/watch?v=jcp5t8PsMsY)

Severity Range
--------------

- Low to High

Description
-----------

Clickjacking occurs when a page can be embedded in an iframe, with which the user can interact surreptitiously.  This is most often performed by making the iframe transparent and placing it above decoy UI elements, causing the user to click inside the iframe without their knowledge.

Security Impact
---------------

Clickjacking can be used to trick users into performing many actions, from accepting requests to deleting data.  In rare cases, clickjacking has even been used to compromise local files due to the embedding of a file explorer.

**Note**: Clickjacking-style embeds can be performed on many pages where there is no security impact.  If it's impossible to trick a user into performing a security-sensitive action, this isn't generally considered to be a valid clickjacking issue.

Remediation
-----------

All application pages should set the X-Frame-Options header according to how it should be possible to embed the page inside an iframe.  `SAMEORIGIN` will allow only pages from the same origin to embed it; `DENY` will prevent embedding entirely.  This will prevent clickjacking attacks in all modern web browsers.

References
----------

- [https://www.owasp.org/index.php/Clickjacking](https://www.owasp.org/index.php/Clickjacking)
