---
title: Desktop/embedded hacking tools
---

This is a curated list of hacking tools for native applications and embedded devices and is not intended to be comprehensive; rather, we want to highlight the tools we find especially useful.

<ul>
	<li><a href="https://www.hex-rays.com/products/ida/">IDA Pro and Hex-Rays Decompiler</a>: IDA is the absolute gold standard for disassemblers and its decompiler plugins are the gold standard for decompilation. It is a wonderful tool with support for nearly every obscure platform and an extensive (if confusing) SDK to add nearly any feature you can imagine. However, its price makes it difficult to justify.</li>
	<li><a href="https://www.hopperapp.com/">Hopper</a>: This is a fantastic, low-cost disassembler and decompiler that runs on macOS and Linux.  While it's no replacement for IDA, it is a great choice for most applications.</li>
	<li><a href="https://binary.ninja/">Binary Ninja</a>: Another low-cost alternative to IDA.  Its API is perhaps the most powerful of the three for automating analysis of code.</li>
	<li><a href="https://github.com/radare/radare2">Radare2</a>: This is a set of tools for doing analysis of binaries.  It includes everything from disassembly to debugging and more.</li>
	<li><a href="http://www.heaventools.com/overview.htm">PE Explorer</a>: This is a great tool for analyzing the PE binaries used on Windows.  It allows for exploration of the structures of the executable itself, as well as resources.</li>
	<li><a href="https://www.jetbrains.com/decompiler/">dotPeek</a>: A powerful decompiler for .NET assemblies.</li>
	<li><a href="https://www.aldeid.com/wiki/PEiD">PEiD</a>: Tool for detecting cryptors, packers, and encryption routines in Windows PE binaries.</li>
	<li><a href="https://www.unicorn-engine.org/">Unicorn Engine</a>: This is a library rather than a standalone tool, but it makes writing quick emulators a breeze.  Particularly useful for reverse-engineering.</li>
	<li><a href="http://lcamtuf.coredump.cx/afl/">american fuzzy lop</a>: AFL is an extremely powerful fuzzer, enabling detection of complicated bugs in many applications and libraries.</li>
	<li><a href="https://github.com/ReFirmLabs/binwalk">Binwalk</a>: Used for firmware analysis and extraction.  This is primarily useful for embedded Linux devices.</li>
	<li><a href="https://en.wikipedia.org/wiki/Strings_(Unix)">GNU strings</a>: Finds strings in arbitrary binaries. While not strictly for reverse-engineering, it is among the most useful tools around.</li>
	<li><a href="https://mh-nexus.de/en/hxd/">HxD</a> (Windows) <a href="https://www.suavetech.com/0xed/">0xED</a> (macOS): These are graphical hex editors, useful for analysis and manipulation of files and block devices.</li>
	<li><a href="https://www.qemu.org/">QEMU</a>: An emulator and virtual machine supporting a large number of systems/architectures.  This makes it useful for things like running embedded firmware, but also includes <a href="https://en.wikibooks.org/wiki/QEMU/Debugging_with_QEMU">debugging facilities</a> that make it an optimal tool for hacking.  Can be combined with AFL for fuzzing of binaries that aren't for your native architecture.</li>
</ul>
