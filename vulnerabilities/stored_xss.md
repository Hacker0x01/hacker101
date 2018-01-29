---
layout: default
title: Stored XSS
score: Medium to Critical
---

Related Session
---------------

<div class="container">
	<iframe id="ytplayer" type="text/html" width="640" height="360" src="https://www.youtube-nocookie.com/embed/HGaFCcWM57U?rel=0&autoplay=0&origin={{ site.url }}" frameborder="0"></iframe>
</div>

Description
-----------

Stored XSS (Cross-Site Scripting) occurs when user input is stored in a database, file, or other location and later sent to the browser without proper sanitization.

Security Impact
---------------

With Stored XSS, it is possible for an attacker to place a payload onto a page, which when visited will cause arbitrary JavaScript to execute.  This allows the attacker to perform any action as the user, exfiltrate data, and more.

Remediation
-----------

User input should always be encoded prior to output.  If the user input is being inserted into a script tag, it must be in string form and be string escaped, as well as ensuring that `<` and `>` are not included directly.  If the user input is going elsewhere on a page, it must be HTML entity encoded.

It is critical that this occur for all pieces of data retrieved from the database, even if it *should* be safe under normal circumstances.  This is to ensure that XSS doesn't occur in the future, if a bug allows manipulation of that suspected-safe data.

References
----------

- [https://www.owasp.org/index.php/Cross-site%5FScripting%5F(XSS)](https://www.owasp.org/index.php/Cross-site%5FScripting%5F%28XSS%29)

