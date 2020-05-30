---
title: Desktop/embedded hacking tools
---

This is a curated list of hacking tools for native applications and embedded devices and is not intended to be comprehensive; rather, we want to highlight the tools we find especially useful.

* [american fuzzy lop](http://lcamtuf.coredump.cx/afl/): AFL is an extremely powerful fuzzer, enabling detection of complicated bugs in many applications and libraries.
* [Binary Ninja](https://binary.ninja/): Another low-cost alternative to IDA. Its API is perhaps the most powerful of the three for automating analysis of code.
* [Binwalk](https://github.com/ReFirmLabs/binwalk): Used for firmware analysis and extraction. This is primarily useful for embedded Linux devices.
* [dotPeek](https://www.jetbrains.com/decompiler/): A powerful decompiler for .NET assemblies.
* [GNU strings](https://en.wikipedia.org/wiki/Strings_(Unix)): Finds strings in arbitrary binaries. While not strictly for reverse-engineering, it is among the most useful tools around.
* [Hopper](https://www.hopperapp.com/): This is a fantastic, low-cost disassembler and decompiler that runs on macOS and Linux. While it's no replacement for IDA, it is a great choice for most applications.
* [HxD](https://mh-nexus.de/en/hxd/) (Windows) [0xED](https://www.suavetech.com/0xed/) (macOS): These are graphical hex editors, useful for analysis and manipulation of files and block devices.
* [IDA Pro and Hex-Rays Decompiler](https://www.hex-rays.com/products/ida/): IDA is the absolute gold standard for disassemblers and its decompiler plugins are the gold standard for decompilation. It is a wonderful tool with support for nearly every obscure platform and an extensive (if confusing) SDK to add nearly any feature you can imagine. However, its price makes it difficult to justify.
* [PE Explorer](http://www.heaventools.com/overview.htm): This is a great tool for analyzing the PE binaries used on Windows. It allows for exploration of the structures of the executable itself, as well as resources.
* [PEiD](https://www.aldeid.com/wiki/PEiD): Tool for detecting cryptors, packers, and encryption routines in Windows PE binaries.
* [QEMU](https://www.qemu.org/): An emulator and virtual machine supporting a large number of systems/architectures. This makes it useful for things like running embedded firmware, but also includes [debugging facilities](https://en.wikibooks.org/wiki/QEMU/Debugging_with_QEMU) that make it an optimal tool for hacking. Can be combined with AFL for fuzzing of binaries that aren't for your native architecture.
* [Radare2](https://github.com/radare/radare2): This is a set of tools for doing analysis of binaries. It includes everything from disassembly to debugging and more.
* [Unicorn Engine](https://www.unicorn-engine.org/): This is a library rather than a standalone tool, but it makes writing quick emulators a breeze. Particularly useful for reverse-engineering.
