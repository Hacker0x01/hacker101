Stream Cipher Key Reuse
=======================

Related Session
---------------

[../sessions/crypto_attacks.md](../sessions/crypto_attacks.md)

[![Hacker101 - Crypto Attacks](https://img.youtube.com/vi/jtcpREJLN1Y/0.jpg)](https://www.youtube.com/watch?v=jtcpREJLN1Y)

Severity Range
--------------

- Low to Critical

Description
-----------

Making use of the same key for encryption with a stream cipher without the use of a nonce can lead to exposure of confidential data.  This is because in stream ciphers, the incoming plaintext is XORed with the cipher's keystream to produce the corresponding ciphertext.  If you have two ciphertexts encrypted with the same key, XORing these together will eliminate the keystream entirely, leaving you with the XOR of the original plaintexts.

Security Impact
---------------

It may be possible for an attacker to compromise confidential data or violate the integrity of ciphertext.  The severity of this depends upon how readily an attacker can gain access to such keystreams, as well as the importance of the encrypted data.

Remediation
-----------

If at all possible, do not reuse keys for encryption.  However, for cases where this is not possible, it is necessary to use a nonce to ensure safety.  For algorithms which don't natively support nonces (e.g. RC4), it is recommended that you XOR the key with a nonce prior to use.

References
----------

- [https://cryptosmith.com/2008/05/31/stream-reuse/](https://cryptosmith.com/2008/05/31/stream-reuse/)
