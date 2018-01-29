---
layout: default
title: Insecure Password Storage
score: Medium to Critical
---

Related Session
---------------

<div class="container">
	<iframe id="ytplayer" type="text/html" width="640" height="360" src="https://www.youtube-nocookie.com/embed/xZ5cxxllgP8?rel=0&autoplay=0&origin={{ site.url }}" frameborder="0"></iframe>
</div>

Description
-----------

Passwords for user accounts should use a one-way hash algorithm meeting the following goals:

- Unique for each assignment -- Even when using the same password, hashes should not repeat.  This prevents the compromise of one password hash from compromising all other instances of the same password.
- Slow to construct/verify -- This prevents or severely restricts brute-force attacks against the passwords.
- Impervious to rainbow tables -- This prevents attackers from performing computational work up front, then quickly cracking passwords.

Without all three of these goals being met, passwords are vulnerable to attack.  One should not use digest functions such as MD5 and the SHA family for hashing passwords -- they are fast and can be cracked easily using tools such as [hashcat](https://hashcat.net/hashcat/).

Security Impact
---------------

Attackers with access to user password hashes may be able to determine the passwords in use.  This can lead not only to compromise of user accounts on this system, but anywhere else the user may have used the same password.

Remediation
-----------

The use of a secure password storage algorithm (key derivation algorithm) such as bcrypt, PKDF2, and Argon2, for instance, are optimal remediations for this issue, because they are slow and therefore require more computational power to crack than a fast digest algorithm (e.g. MD5).  Please keep in mind that it is recommended to set a high number of rounds for PKDF2.

Another benefit of using the key derivation functions such as bcrypt is the fact that they have a built in salt.  The salt is randomly generated for each password and then included in the hashing process.  For example, in bcrypt you can see the salt in the digest:

```
$2a$10$I/NxkD0Qk1ElSoVzgWl/degIq0.AQ/KptUQAe9VKlzyZ2HnYsUjnW
```

References
----------

- [https://www.owasp.org/index.php/Password%5FStorage%5FCheat%5FSheet](https://www.owasp.org/index.php/Password_Storage_Cheat_Sheet)

