Unchecked Redirect
==================

Related Session
---------------

[../sessions/unchecked_redirects.md](../sessions/unchecked_redirects.md)

[![Hacker101 - Unchecked Redirects](https://img.youtube.com/vi/AEushmkXRpE/0.jpg)](https://www.youtube.com/watch?v=AEushmkXRpE)

Severity Range
--------------

- Low to Medium

Description
-----------

Unchecked redirects occur when an application redirects to a destination controlled by attackers.  This often occurs in functionality returning users to a previous page, e.g. after authenticating.

Security Impact
---------------

Attackers may be able to use this to execute believable phishing attacks, bypass authentication, or (in rare circumstances) violate CSRF mitigations.

Remediation
-----------

When possible, do not allow user input to directly control redirect destinations; rather, generate them on the server side (e.g. via ID -> URL mapping).  When this is not an option, a strict whitelist is highly recommended.  Finally, a last-ditch mitigation can be performed by removing protocol specifiers from user input prior to redirection.  This last method will not fix intra-site redirect exploits, but can prevent redirects to an attacker-controlled website.

References
----------

- [https://www.owasp.org/index.php/Unvalidated_Redirects_and_Forwards_Cheat_Sheet](https://www.owasp.org/index.php/Unvalidated_Redirects_and_Forwards_Cheat_Sheet)
