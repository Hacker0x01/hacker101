Padding Oracles
===============

Related Session
---------------

[../sessions/crypto_attacks.md](../sessions/crypto_attacks.md)

[![Hacker101 - Crypto Attacks](https://img.youtube.com/vi/jtcpREJLN1Y/0.jpg)](https://www.youtube.com/watch?v=jtcpREJLN1Y)

Severity Range
--------------

- High to Critical

Description
-----------

Padding oracles occur when a server, upon decrypting data, differentiates between validly padded and invalidly padded data.  Traditional padding oracle bugs apply in cases where data is encrypted with CBC mode, controllable by an attacker, and does not include authentication (e.g. via an HMAC).

Security Impact
---------------

Given control of data and a padding oracle, an attacker can wholly decrypt said data.  This is possible without any knowledge of the key material.

Remediation
-----------

There are a number of aspects to the proper remediation of padding oracle vulnerabilities.  The server should never differentiate between different kinds of decryption errors; sending back a generic, identical error regardless of the cause of errors.  Additionally, all encrypted data should contain an authentication method, for instance an HMAC.  This will prevent any vulnerabilities related to tampering with ciphertext.

References
----------

- [https://en.wikipedia.org/wiki/Padding_oracle_attack](https://en.wikipedia.org/wiki/Padding_oracle_attack)
