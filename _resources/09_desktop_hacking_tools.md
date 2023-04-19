---
title: Desktop / embedded hacking tools
---

This is a curated list of hacking tools for native applications and embedded devices and is not intended to be comprehensive; rather, we want to highlight the tools we find especially useful.

* [american fuzzy lop](https://lcamtuf.coredump.cx/afl/){:target="_blank"}: AFL is an extremely powerful fuzzer, enabling detection of complicated bugs in many applications and libraries.
* [Binary Ninja](https://binary.ninja/){:target="_blank"}: Another low-cost alternative to IDA. Its API is perhaps the most powerful of the three for automating analysis of code.
* [Binwalk](https://github.com/ReFirmLabs/binwalk){:target="_blank"}: Used for firmware analysis and extraction. This is primarily useful for embedded Linux devices.
* [dotPeek](https://www.jetbrains.com/decompiler/){:target="_blank"}: A powerful decompiler for .NET assemblies.
* [GNU strings](https://en.wikipedia.org/wiki/Strings_(Unix)){:target="_blank"}: Finds strings in arbitrary binaries. While not strictly for reverse-engineering, it is among the most useful tools around.
* [Hopper](https://www.hopperapp.com/){:target="_blank"}: This is a fantastic, low-cost disassembler and decompiler that runs on macOS and Linux. While it's no replacement for IDA, it is a great choice for most applications.
* [HxD](https://mh-nexus.de/en/hxd/){:target="_blank"} (Windows) [0xED](https://www.suavetech.com/0xed/){:target="_blank"} (macOS): These are graphical hex editors, useful for analysis and manipulation of files and block devices.
* [IDA Pro and Hex-Rays Decompiler](https://hex-rays.com/ida-pro/){:target="_blank"}: IDA is the absolute gold standard for disassemblers and its decompiler plugins are the gold standard for decompilation. It is a wonderful tool with support for nearly every obscure platform and an extensive (if confusing) SDK to add nearly any feature you can imagine. However, its price makes it difficult to justify.
* [PE Explorer](http://www.heaventools.com/overview.htm){:target="_blank"}: This is a great tool for analyzing the PE binaries used on Windows. It allows for exploration of the structures of the executable itself, as well as resources.
* [PEiD](https://www.aldeid.com/wiki/PEiD){:target="_blank"}: Tool for detecting cryptors, packers, and encryption routines in Windows PE binaries.
* [QEMU](https://www.qemu.org/){:target="_blank"}: An emulator and virtual machine supporting a large number of systems/architectures. This makes it useful for things like running embedded firmware, but also includes [debugging facilities](https://en.wikibooks.org/wiki/QEMU/Debugging_with_QEMU){:target="_blank"} that make it an optimal tool for hacking. Can be combined with AFL for fuzzing of binaries that aren't for your native architecture.
* [Radare2](https://rada.re/n/radare2.html){:target="_blank"}: This is a set of tools for doing analysis of binaries. It includes everything from disassembly to debugging and more.
* [Unicorn Engine](https://www.unicorn-engine.org/){:target="_blank"}: This is a library rather than a standalone tool, but it makes writing quick emulators a breeze. Particularly useful for reverse-engineering.
