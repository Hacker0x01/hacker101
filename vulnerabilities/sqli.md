---
layout: default
title: SQL Injection
score: Medium to Critical
---

Related Session
---------------

<div class="container">
	<iframe id="ytplayer" type="text/html" width="640" height="360" src="https://www.youtube-nocookie.com/embed/bIB3Hi6KeZU?rel=0&autoplay=0&origin={{ site.url }}" frameborder="0"></iframe>
</div>

Description
-----------

SQL Injection occurs when attacker-controlled input is inserted into a SQL query without proper validation or sanitization.  This often occurs when using string formatting or concatenation to build queries.

Security Impact
---------------

An attacker may be able to read data for which they are not authorized, tamper with or destroy data, or possibly even write files or execute code on the database server.  The impact is dependent on the exact scenario, but is generally quite severe.

Remediation
-----------

When performing SQL queries it is recommended that you use parameterized queries or an ORM (object-relational mapper) library.  If this is not possible, all user input must be strictly escaped for insertion into queries; this is a risk as it needs to be handled for every input into every query to be successful.

References
----------

- [https://www.owasp.org/index.php/SQL_Injection](https://www.owasp.org/index.php/SQL_Injection)
