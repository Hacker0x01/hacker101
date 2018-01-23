Improper Handling of Null Termination
=====================================

Related Session
---------------

[../sessions/null_termination.md](../sessions/null_termination.md)

[![Hacker101 - Null Termination Bugs](https://img.youtube.com/vi/xCcVjgTbycM/0.jpg)](https://www.youtube.com/watch?v=xCcVjgTbycM)

Severity Range
--------------

- Medium to Critical

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
