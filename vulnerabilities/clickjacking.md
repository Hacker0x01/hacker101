---
layout: default
title: Lack of Clickjacking Protection
score: Low to High
---

Related Session
---------------

<div class="container">
	<iframe id="ytplayer" type="text/html" width="640" height="360" src="https://www.youtube-nocookie.com/embed/jcp5t8PsMsY?rel=0&autoplay=0&origin={{ site.url }}" frameborder="0"></iframe>
</div>

Description
-----------

Clickjacking occurs when a page can be embedded in an iframe, with which the user can interact surreptitiously.  This is most often performed by making the iframe transparent and placing it above decoy UI elements, causing the user to click inside the iframe without their knowledge.

To test for clickjacking, one can try embedding the target page in an iframe as follows:

```
<iframe src="http://example.com" width="500" height="500"></iframe>
```

Security Impact
---------------

Clickjacking can be used to trick users into performing many actions, from accepting requests to deleting data.  In rare cases, clickjacking has even been used to compromise local files due to the embedding of a file explorer.

**Note**: Clickjacking-style embeds can be performed on many pages where there is no security impact.  If it's impossible to trick a user into performing a security-sensitive action, this isn't generally considered to be a valid clickjacking issue. Security-sensitive actions include, but are not limited to: deleting one's account, purchasing something, and downloading a malicious script.

Remediation
-----------

All application pages should set the `X-Frame-Options` header according to how it should be possible to embed the page inside an iframe.  `SAMEORIGIN` will allow only pages from the same origin to embed it; `DENY` will prevent embedding entirely.  This will prevent clickjacking attacks in all modern web browsers.

On top of that, you can also set up a Content Security Policy with a `frame-ancestors` directive pointing to white-listed hosts in order to prevent clickjacking. For example, a Content Security Policy containing `frame-ancestors: none`, prevents embedding the page altogether.

References
----------

- [https://www.owasp.org/index.php/Clickjacking](https://www.owasp.org/index.php/Clickjacking)
