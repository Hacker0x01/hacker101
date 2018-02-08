---
layout: default
title: Directory Traversal
score: High to Critical
---

Description
-----------

Directory traversal (also known as path traversal) attacks occur when attacker-controlled data is used to construct paths without sanitization.  Most commonly this occurs when `../` (go to the parent directory) is allowed to be used as a path component (e.g. `https://example.com/?path=../../../file`).  By chaining together these components, it's often possible to access every file on the system.

Security Impact
---------------

Depending on the context in which the path is used, it may be possible for attackers to read or write arbitrary files, destroy data, or confirm the existence of data.

Remediation
-----------

Whenever possible, user input should not be used in the construction of paths.  However, if this is not an option then it is imperative that this user input be sanitized; no path separators (`\` on Windows, `/` on most other systems) should be permitted in user input.

References
----------

- [https://www.owasp.org/index.php/Path_Traversal](https://www.owasp.org/index.php/Path_Traversal)

