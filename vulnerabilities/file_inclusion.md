---
layout: default
title: Local/Remote File Inclusion
score: Medium to Critical
---

Related Session
---------------

<div class="container">
	<iframe id="ytplayer" type="text/html" width="640" height="360" src="https://www.youtube-nocookie.com/embed/ehp9TdmXWr0?rel=0&autoplay=0&origin={{ site.url }}" frameborder="0"></iframe>
</div>

Description
-----------

File inclusion vulnerabilities occur when user input is used in the inclusion of source code, allowing an attacker to force local or remote code to execute on the server.  These vulnerabilities tend to apply to dynamic languages like PHP, where runtime importation of code is common.

Security Impact
---------------

Depending on the details of the inclusion, attackers may be able to run code on the server from either a local or remote file.  If the vulnerability is local-only, attackers may not be able to run their own code, limiting the impact of this vulnerability.

Remediation
-----------

Whenever possible, user input should not be used in the construction of paths for code inclusion.  However, if this is not an option then it is imperative that this user input be put through a very strict whitelist.

References
----------

- [https://www.owasp.org/index.php/Testing_for_Local_File_Inclusion](https://www.owasp.org/index.php/Testing_for_Local_File_Inclusion)
