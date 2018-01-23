Insecure Password Storage
=========================

Related Session
---------------

[../sessions/password_storage.md](../sessions/password_storage.md)

<iframe id="ytplayer" type="text/html" width="640" height="360" src="https://www.youtube-nocookie.com/embed/xZ5cxxllgP8?rel=0&autoplay=0&origin=https://hacker101.com" frameborder="0"></iframe>

Severity Range
--------------

- Medium to Critical

Description
-----------

Passwords for user accounts should use a one-way hash algorithm meeting the following goals:

- Unique for each assignment -- Even when using the same password, hashes should not repeat.  This prevents the compromise of one password hash from compromising all other instances of the same password.
- Slow to construct/verify -- This prevents or severely restricts brute-force attacks against the passwords.
- Impervious to rainbow tables -- This prevents attackers from performing computational work up front, then quickly cracking passwords.

Without all three of these goals being met, passwords are vulnerable to attack.

Security Impact
---------------

Attackers with access to user password hashes may be able to determine the passwords in use.  This can lead not only to compromise of user accounts on this system, but anywhere else the user may have used the same password.

Remediation
-----------

The use of a secure password storage algorithm -- Bcrypt for instance -- is the optimal remediation for this issue.  However, an algorithm like PBKDF2 with a high round count is also effective.

References
----------

- [https://www.owasp.org/index.php/Password%5FStorage%5FCheat%5FSheet](https://www.owasp.org/index.php/Password_Storage_Cheat_Sheet)

