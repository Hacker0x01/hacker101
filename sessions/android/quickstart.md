---
layout: page
title: Android Quickstart
video_src: https://www.youtube-nocookie.com/embed/y0O3sCX9ftM
previous_url: ../mobile_crash_course
next_url: common_android_bugs_1
redirect_from:
  - /sessions/android_quickstart
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
	- [JD-GUI](https://java-decompiler.github.io/)
	- [Frida](https://frida.re/)
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
	- [Disable certificate pinning](https://www.netspi.com/blog/technical/mobile-application-penetration-testing/four-ways-bypass-android-ssl-verification-certificate-pinning)
	- Look at intent filters
		- [Great example report](https://hackerone.com/reports/283063)
