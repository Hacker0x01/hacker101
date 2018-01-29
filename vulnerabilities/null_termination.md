---
layout: default
title: Improper Handling of Null Termination
score: Medium to Critical
---

Related Session
---------------

<div class="container">
	<iframe id="ytplayer" type="text/html" width="640" height="360" src="https://www.youtube-nocookie.com/embed/xCcVjgTbycM?rel=0&autoplay=0&origin={{ site.url }}" frameborder="0"></iframe>
</div>

Description
-----------

Null termination-related bugs occur when software allows null terminators to be used in user data, without ensuring that these are removed/handled prior to passing them to lower-level functions.  For instance, most filesystem-related functionality in PHP will stop looking at filenames after a null terminator, potentially cutting off critical data.

Security Impact
---------------

These bugs can allow an attacker to access data for which they are not permitted, tamper with data, or even gain code execution in some cases.

Remediation
-----------

Unless they are critical to application functionality, null terminators should be removed from user input or an exception should be thrown when they are detected.

References
----------

- [https://www.owasp.org/index.php/Embedding_Null_Code](https://www.owasp.org/index.php/Embedding_Null_Code)
