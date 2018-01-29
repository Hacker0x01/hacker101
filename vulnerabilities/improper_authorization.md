---
layout: default
title: Improper Authorization
score: Low to Critical
---

Related Session
---------------

<div class="container">
	<iframe id="ytplayer" type="text/html" width="640" height="360" src="https://www.youtube-nocookie.com/embed/HGaFCcWM57U?rel=0&autoplay=0&origin={{ site.url }}" frameborder="0"></iframe>
</div>

Description
-----------

Improper authorization takes many different forms and can also be known as forced browsing, direct object reference, or auth-z bugs.  These bugs occur when an application does not properly check that a user is authorized to access functionality, allowing for exposure of data and users.

Security Impact
---------------

It may be possible for an attacker to access, modify, or delete data for which they are not authorized.  This can be relatively innocuous (e.g. seeing an admin console landing page but not being able to see any data) or very critical (e.g. full visibility into user data).

Remediation
-----------

All application functions should strictly validate a user's authorization prior to allowing access to that functionality.  This includes not just access levels (e.g. regular user vs admin) but authorization to specific data.

References
----------

- [https://www.owasp.org/index.php/Broken_Access_Control](https://www.owasp.org/index.php/Broken_Access_Control)
