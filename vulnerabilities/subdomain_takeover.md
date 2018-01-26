---
layout: default
title: Sub-domain Takeover
score: Medium to Critical
---

Description
-----------

Sub-domain takeover vulnerabilities occur when a sub-domain (subdomain.example.com) is pointing to a service (e.g. GitHub pages, Heroku, etc.) that has been removed or deleted. This allows an attacker to set up a page on the service that was being used and point their page to that sub-domain. For example, if subdomain.example.com was pointing to a GitHub page and the user decided to delete their GitHub page, an attacker can now create a GitHub page, add a [CNAME file](https://github.com/Hacker0x01/hacker101/blob/master/CNAME) containing subdomain.example.com, and claim subdomain.example.com.

www.hacker101.com is a sub-domain pointing to a GitHub page. If someone deletes https://github.com/Hacker0x01/hacker101 and forgets to remove the DNS entry pointing to this page, then you could serve content on www.hacker101.com.

Hackers commonly use sub-domain scraping and brute-forcing tools such as [Sublist3r](https://github.com/aboul3la/Sublist3r) to find all the sub-domains of a target. They will then check the DNS records and/or use a [screen-shot script](https://github.com/ChrisTruncer/EyeWitness) to detect vulnerable sub-domains. A sub-domain pointing to a GitHub page returning a 404, may be an indicator that it can be claimed on GitHub.

![GitHub 404 page](../assets/images/github-404.png)

Security Impact
---------------

A successful sub-domain takeover enables an attacker to serve content on the sub-domain. If the sub-domain is a child domain of the service's basename, then the attacker can read and set cookies on the basename too -- subdomain.example.com can set cookies for example.com.

Remediation
-----------

Make sure to remove the DNS entry on the sub-domain pointing to the deleted service to ensure that nobody can take it over.

References
----------

- [https://www.owasp.org/index.php/Testing_for_Local_File_Inclusion](https://www.owasp.org/index.php/Testing_for_Local_File_Inclusion)
