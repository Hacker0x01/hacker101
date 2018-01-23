Local/Remote File Inclusion
===========================

Related Session
---------------

[../sessions/file_inclusion.md](../sessions/file_inclusion.md)

[![Hacker101 - File Inclusion Bugs](https://img.youtube.com/vi/ehp9TdmXWr0/0.jpg)](https://www.youtube.com/watch?v=ehp9TdmXWr0)

Severity Range
--------------

- Medium to Critical

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
