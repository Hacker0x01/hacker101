---
layout: page
title: iOS Quickstart
---

In this session -- the third and final in a series on mobile hacking -- we discuss the structure of iOS applications, key differences between testing on iOS and Android, recommended tools, setup details, and some handy tips for hacking iOS apps.

What you'll learn
-----------------

- Structure of iOS apps
	- IPA container
	- Encryption
	- Info.plist
- Differences in testing iOS vs Android
	- Simulator vs Emulator
	- Native code vs Dalvik
- Tools
	- Xcode
	- [bfinject](https://github.com/BishopFox/bfinject)
	- [cycript](http://www.cycript.org/)
	- [Frida](https://www.frida.re/)
	- [Cydia Impactor](http://www.cydiaimpactor.com/)
	- [Hopper](https://www.hopperapp.com/)
	- [SSL Kill Switch 2](https://github.com/nabla-c0d3/ssl-kill-switch2)
	- [Burp Suite Mobile Assistant](https://portswigger.net/burp/documentation/desktop/tools/mobile-assistant)
- Setting up your proxy
	- Instructions for Simulator
	- Instructions for physical devices
	- Installing the CA certificate
- Jailbreaking
	- WARNING: Do not do this on any device with important data
- Testing tips
	- Use bfinject to decrypt IPAs
	- Disable cert pinning with SSL Kill Switch 2 or Burp Suite Mobile Assistant
	- Install iPad-only apps on other devices with an Info.plist modification
	- Basic memory corruption bug hunting
	- Look at custom URL schemes

Video
-----

<div class="container">
	<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/c4M8sd9lcFU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
