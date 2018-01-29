---
layout: default
title: Padding Oracles
score: High to Critical
---

Related Session
---------------

<div class="container">
	<iframe id="ytplayer" type="text/html" width="640" height="360" src="https://www.youtube-nocookie.com/embed/jtcpREJLN1Y?rel=0&autoplay=0&origin={{ site.url }}" frameborder="0"></iframe>
</div>

Description
-----------

Padding oracles occur when a server, upon decrypting data, differentiates between validly padded and invalidly padded data; i.e. the server responds differently when the padding is correct and when the encrypted message is padded incorrectly.  Traditional padding oracle bugs apply in cases where data is encrypted with Cipher Block Chaining mode (CBC), controllable by an attacker, and does not include authentication (e.g. via an HMAC).

Security Impact
---------------

Given control of data and a padding oracle, an attacker can wholly decrypt said data.  This is possible without any knowledge of the key material.

Remediation
-----------

There are a number of aspects to the proper remediation of padding oracle vulnerabilities.  The server should never differentiate between different kinds of decryption errors; sending back a generic, identical error regardless of the cause of errors.  Additionally, all encrypted data should contain an authentication method, for instance an HMAC.  This will prevent any vulnerabilities related to tampering with ciphertext.

References
----------

- [https://en.wikipedia.org/wiki/Padding_oracle_attack](https://en.wikipedia.org/wiki/Padding_oracle_attack)
