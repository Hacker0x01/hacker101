---
layout: default
title: Session Fixation
score: Low to Medium
---

Related Session
---------------

<div class="container">
	<iframe id="ytplayer" type="text/html" width="640" height="360" src="https://www.youtube-nocookie.com/embed/tkSmaMlSQ9E?rel=0&autoplay=0&origin={{ site.url }}" frameborder="0"></iframe>
</div>

Description
-----------

Session fixation occurs when an attacker is able to control the session identifier in use by a user when authenticating.  Once the user has authenticated, the attacker has a valid session identifier for that user's account.

Security Impact
---------------

An attacker performing a session fixation attack may be able to take complete control over a user account via their session identifier.  This grants full access without any need for credential compromise.

Remediation
-----------

When a user logs in to or out of an application, they should receive a brand new session identifier.  This prevents session fixation attacks, as well as a few other less common attacks.  Additionally, session identifiers should never be passed in or used from query strings; this prevents session leakage and assists in preventing session fixation.

References
----------

- [https://www.owasp.org/index.php/Session_fixation](https://www.owasp.org/index.php/Session_fixation)
