Unchecked Redirect
==================

Related Session
---------------

[Unchecked Redirects](../sessions/unchecked_redirects.md)

<iframe id="ytplayer" type="text/html" width="640" height="360" src="https://www.youtube-nocookie.com/embed/AEushmkXRpE?rel=0&autoplay=0&origin=https://hacker101.com" frameborder="0"></iframe>

Severity Range
--------------

- Low to Medium

Description
-----------

Unchecked redirects occur when an application redirects to a destination controlled by attackers.  This often occurs in functionality returning users to a previous page, e.g. after authenticating.

```
http://example.com/?return_to=http://example.com/home
```

An attacker can control the value of the `return_to` parameter and make it redirect to a malicious endpoint.

```
http://example.com/?return_to=http://evil.com
```

Security Impact
---------------

Attackers may be able to use this to execute believable phishing attacks, bypass authentication, or (in rare circumstances) violate CSRF mitigations.

Remediation
-----------

When possible, do not allow user input to directly control redirect destinations; rather, generate them on the server side (e.g. via ID -> URL mapping).  When this is not an option, a strict whitelist is highly recommended.  Finally, a last-ditch mitigation can be performed by removing protocol specifiers from user input prior to redirection.  This last method will not fix intra-site redirect exploits, but can prevent redirects to an attacker-controlled website.

References
----------

- [https://www.owasp.org/index.php/Unvalidated_Redirects_and_Forwards_Cheat_Sheet](https://www.owasp.org/index.php/Unvalidated_Redirects_and_Forwards_Cheat_Sheet)
