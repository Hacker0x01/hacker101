---
layout: default
title: Stream Cipher Key Reuse
score: Low to Critical
---

Related Session
---------------

<div class="container">
	<iframe id="ytplayer" type="text/html" width="640" height="360" src="https://www.youtube-nocookie.com/embed/jtcpREJLN1Y?rel=0&autoplay=0&origin={{ site.url }}" frameborder="0"></iframe>
</div>

Description
-----------

Making use of the same key for encryption with a stream cipher without the use of a nonce can lead to exposure of confidential data.  This is because in stream ciphers, the incoming plaintext is XORed with the cipher's keystream to produce the corresponding ciphertext.  If you have two ciphertexts encrypted with the same key, XORing these together will eliminate the keystream entirely, leaving you with the XOR of the original plaintexts.

Message 1:

![Message 1](../assets/images/message.jpg)

Message 2:

![Message 2](../assets/images/h1.png)

Key:

![Key](../assets/images/key.jpg)

Encrypted message 1:

![Encrypted message 1](../assets/images/encrypted-message-1.jpg)

Encrypted message 2:

![Encrypted message 2](../assets/images/encrypted-message-2.jpg)

XOR encrypted message 1 with encrypted message 2:

![Decrypted messages](../assets/images/decrypted.jpg)

Security Impact
---------------

It may be possible for an attacker to compromise confidential data or violate the integrity of ciphertext.  The severity of this depends upon how readily an attacker can gain access to such keystreams, as well as the importance of the encrypted data.

Remediation
-----------

If at all possible, do not reuse keys for encryption.  However, for cases where this is not possible, it is necessary to use a nonce to ensure safety.  For algorithms which don't natively support nonces (e.g. RC4), it is recommended that you XOR the key with a nonce prior to use.

References
----------

- [https://cryptosmith.com/2008/05/31/stream-reuse/](https://cryptosmith.com/2008/05/31/stream-reuse/)
