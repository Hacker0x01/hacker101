---
layout: default
title: Lack of CSRF Tokens
score: Low to Critical
---

Related Session
---------------

<div class="container">
	<iframe id="ytplayer" type="text/html" width="640" height="360" src="https://www.youtube-nocookie.com/embed/DWBUQiaN5ZM?rel=0&autoplay=0&origin={{ site.url }}" frameborder="0"></iframe>
</div>

Description
-----------

CSRF tokens are session-unique values sent along with stateful requests.  These prevent Cross-Site Request Forgery attacks, where an attacker can force a victim's browser to perform an action. A basic CSRF payload could look like this:

```
<iframe style="display:none" name="csrf-frame"></iframe>
<form method='POST' action='http://example.com/new-password' target="csrf-frame" id="csrf-form" style="display:none">
	<input type='hidden' name='username' value='example'>
    <input type='hidden' name='password' value='password1234'>
	<input type='submit' value='submit'>
</form>
<!-- Auto submit the form when page loads -->
<script>document.getElementById("csrf-form").submit()</script>
```

The form sends a POST request to `http://example.com/new-password` containing the victim's username and sets a new password for that account. The payload is hidden and executes automatically when the victim views the page where the payload is located.

Security Impact
---------------

If an attacker is able to get a victim to go to a URL they control, they may be able to perform sensitive actions in the context of the victim.  Any action not requiring CSRF tokens would be able to be performed by the attacker.

Remediation
-----------

When generating sessions for users, generate a random string (a CSRF token) and associate it with this session.  For each stateful action the user can perform, send this CSRF token along with the other request data, then check that it matches on the server.  If the CSRF token isn't present or doesn't match the expected value, deny the request.

References
----------

- [https://www.owasp.org/index.php/Cross-Site%5FRequest%5FForgery%5F(CSRF)](https://www.owasp.org/index.php/Cross-Site_Request_Forgery_%28CSRF%29)

