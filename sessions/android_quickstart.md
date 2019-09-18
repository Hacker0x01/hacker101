---
layout: page
title: Android Quickstart
---

In this session -- the second in a series of three on mobile hacking -- we discuss the structure of Android applications, recommended tools, setup details, and some handy tips for hacking Android apps.

What you'll learn
-----------------

- Structure of Android apps
	- APK container
	- Dex files
	- Resources
	- Manifest
- Tools
	- [Android Studio](https://developer.android.com/studio)
	- Android Emulator
	- [Genymotion](https://www.genymotion.com/)
	- [apktool](https://ibotpeaches.github.io/Apktool/)
	- [dex2jar](https://github.com/pxb1988/dex2jar)
	- [JD-GUI](http://jd.benow.ca)
	- [Frida](https://www.frida.re/)
- Setting up your proxy
	- Instructions for emulator
	- Instructions for physical devices
	- Installing the CA certificate
- Rooting
	- WARNING: Do not do this on any device with important data
- Decompilation
	- dex2jar + JD-GUI make a great pair
	- Decompile the whole thing to a directory and use an external editor
- Testing tips
	- Use `adb logcat` to view system and application logs
	- [Disable certificate pinning](https://blog.netspi.com/four-ways-bypass-android-ssl-verification-certificate-pinning/)
	- Look at intent filters
		- [Great example report](https://hackerone.com/reports/283063)

Video
-----

<div class="container">
	<iframe id="ytplayer" type="text/html" width="640" height="360" src="https://www.youtube-nocookie.com/embed/y0O3sCX9ftM?rel=0&autoplay=0&origin={{ site.url }}" frameborder="0"></iframe>
</div>
