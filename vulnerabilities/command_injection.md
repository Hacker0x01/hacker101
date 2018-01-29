---
layout: default
title: Command Injection
score: Critical
---

Related Session
---------------

<div class="container">
	<iframe id="ytplayer" type="text/html" width="640" height="360" src="https://www.youtube-nocookie.com/embed/bIB3Hi6KeZU?rel=0&autoplay=0&origin={{ site.url }}" frameborder="0"></iframe>
</div>

Description
-----------

Command injection attacks occur when user input is used to construct commands for execution, without being properly quoted and escaped.

Security Impact
---------------

With a command injection vulnerability, an attacker may be able to execute any arbitrary commands in the context of the web server.  This often leads to complete control of a server.

Remediation
-----------

Whenever possible, user input should not be permitted in the construction of commands.  If this is absolutely necessary, it is imperative that you quote the input and escape any quotes, backticks, and other special characters.

References
----------

- [https://www.owasp.org/index.php/Command_Injection](https://www.owasp.org/index.php/Command_Injection)

