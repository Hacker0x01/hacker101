Reflected XSS
=============

Related Session
---------------

[../sessions/xss.md](../sessions/xss.md)

<iframe id="ytplayer" type="text/html" width="640" height="360" src="https://www.youtube-nocookie.com/embed/HGaFCcWM57U?rel=0&autoplay=0&origin=https://hacker101.com" frameborder="0"></iframe>

Severity Range
--------------

- Medium to Critical

Description
-----------

Reflected XSS (Cross-Site Scripting) occurs when user input is inadequately validated or sanitized prior to being inserted into a page.

Security Impact
---------------

With reflected XSS, if an attacker can get a victim to go to a specific URL, it is possible that the attacker may be able to execute arbitrary JavaScript in the page.  This allows the attacker to perform any action as the user, exfiltrate data, and more.

Remediation
-----------

User input should always be encoded prior to output.  If the user input is being inserted into a script tag, it must be in string form and be string escaped, as well as ensuring that `<` and `>` are not included directly.  If the user input is going elsewhere on a page, it must be HTML entity encoded.

References
----------

- [https://www.owasp.org/index.php/Cross-site%5FScripting%5F(XSS)](https://www.owasp.org/index.php/Cross-site%5FScripting%5F%28XSS%29)

