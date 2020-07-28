---
layout: page
title: Native Code Crash Course
---

In this session we're diving head-first into understanding and hacking native code.  This is an extremely advanced topic, but by the time you are done with this video, you will have a great head start on the subject.  You'll learn about the fundamentals of how computers work, several types of memory corruption bugs, the protections in use by modern systems, and how to bypass some of these protections.

What you'll learn
-----------------

- Intro
	- What is native code?
	- Breadth not depth
- System Architecture Crash Course
	- Registers
	- Memory
		- Physical
		- Virtual
			- Page tables
	- Stack
	- Endianness
	- Instructions
	- Program Counter
	- Calls
	- Syscalls
	- Shared Libraries
- Tools
	- Debuggers
	- Disassemblers
	- Decompilers
	- Hex editors
	- Assemblers
- Bugs
	- Buffer overflows
	- Out of bounds writes
	- Use After Free
- Protections
	- Stack canaries
	- NX
	- W^X
	- ASLR
- Bypassing Protections
	- JS is an attacker's best friend
	- Information leaks (ASLR)
	- ROP

Resources
---------

- Computing Fundamentals
	- Assembly
		- [x86 Guide](https://www.cs.virginia.edu/~evans/cs216/guides/x86.html)
		- [x86 Instruction Encoding References](http://sandpile.org/)
		- [ARM Guide](https://www.coranac.com/tonc/text/asm.htm)
		- [x86-64 Cheat Sheet](https://cs.brown.edu/courses/cs033/docs/guides/x64_cheatsheet.pdf)
	- [Kernel Resources](https://wiki.osdev.org/Expanded_Main_Page)
	- [Memory Management](https://wiki.osdev.org/Memory_management)
	- [CPU Cache](https://en.wikipedia.org/wiki/CPU_cache)
	- [Shared Library Loading Process](https://amir.rachum.com/blog/2016/09/17/shared-libraries/)
	- Binary File Formats
		- [ELF](http://www.skyfree.org/linux/references/ELF_Format.pdf)
		- [PE](https://docs.microsoft.com/en-us/windows/desktop/debug/pe-format)
		- [Mach-O](https://lowlevelbits.org/parsing-mach-o-files/)
	- [Becoming a Full-Stack Reverse-Engineer](https://www.youtube.com/watch?v=9vKG8-TnawY)
- Tools
	- Debuggers
		- [GDB](https://www.gnu.org/software/gdb/)
		- [LLDB](https://lldb.llvm.org/)
		- [WinDbg](https://docs.microsoft.com/en-us/windows-hardware/drivers/debugger/debugger-download-tools)
		- [OllyDbg](http://www.ollydbg.de/)
	- Disassemblers/Decompilers
		- [IDA Pro](https://www.hex-rays.com/products/ida/)
		- [Hopper](https://www.hopperapp.com/)
		- [Binary Ninja](https://binary.ninja/)
		- [Ghidra](https://www.nsa.gov/resources/everyone/ghidra/)
	- Hex Editors
		- [0xED](https://www.suavetech.com/0xed/)
		- [HxD](https://mh-nexus.de/en/hxd/)
	- Assemblers
		- [Online Assembler and Disassembler](http://shell-storm.org/online/Online-Assembler-and-Disassembler/)
		- [GNU Assembler](https://en.wikipedia.org/wiki/GNU_Assembler)
		- [Netwide Assembler (nasm)](https://en.wikipedia.org/wiki/Netwide_Assembler)
	- ROP Gadget Hunters
		- [ROPgadget](https://github.com/JonathanSalwan/ROPgadget)
		- [Ropper](https://github.com/sashs/Ropper)
	- Emulators
		- [QEMU](https://www.qemu.org/)
		- [Unicorn](https://www.unicorn-engine.org/)
	- Fuzzers
		- [afl](http://lcamtuf.coredump.cx/afl/)
		- [libFuzzer](https://llvm.org/docs/LibFuzzer.html)
	- Instrumentation
		- [Valgrind](http://valgrind.org/)
		- [Pin](https://software.intel.com/en-us/articles/pin-a-dynamic-binary-instrumentation-tool)
	- Executable Lifters
		- [McSema](https://github.com/trailofbits/mcsema)
- Bugs
	- Buffer Overflows
		- [Smashing The Stack For Fun And Profit](http://phrack.org/issues/49/14.html)
	- Out of Bounds Writes
		- [Analyzing and Reproducing the EOS Out-of-Bound Write Vulnerability in nodeos](https://medium.com/@peckshield/reproducing-the-eos-out-of-bound-write-vulnerability-in-nodeos-6a0487070ced)
	- Use After Free
		- [An Introduction to Use After Free Vulnerabilities](https://www.purehacking.com/blog/lloyd-simon/an-introduction-to-use-after-free-vulnerabilities)
		- [What do Nintendo Switch and iOS 9.3 have in common? CVE-2016-4657 walk-through](https://www.youtube.com/watch?v=xkdPjbaLngE&feature=youtu.be)
	- Speculative Execution Bugs
		- [Meltdown and Spectre, explained](https://medium.com/@mattklein123/meltdown-spectre-explained-6bc8634cc0c2)
- Protections
	- [Canaries](https://en.wikipedia.org/wiki/Buffer_overflow_protection#Canaries)
	- [NX bit](https://en.wikipedia.org/wiki/NX_bit)
	- [W^X](https://en.wikipedia.org/wiki/W%5EX)
	- [How do ASLR and DEP work?](https://security.stackexchange.com/questions/18556/how-do-aslr-and-dep-work)
	- [Pointer Authentication on ARMv8.3](https://www.qualcomm.com/media/documents/files/whitepaper-pointer-authentication-on-armv8-3.pdf)
- Bypassing Protections
	- [The info leak era on software exploitation](https://media.blackhat.com/bh-us-12/Briefings/Serna/BH_US_12_Serna_Leak_Era_Slides.pdf)
	- [return-into-lib(c)](http://phrack.org/issues/58/4.html)
	- [Introduction to return oriented programming (ROP)](http://codearcana.com/posts/2013/05/28/introduction-to-return-oriented-programming-rop.html)
	- [Jump-Oriented Programming: A New Class of Code-Reuse Attacks](https://www.comp.nus.edu.sg/~liangzk/papers/asiaccs11.pdf)
	- [Examining Pointer Authentication on the iPhone XS](https://googleprojectzero.blogspot.com/2019/02/examining-pointer-authentication-on.html)
- JavaScript Engine Exploitation Resources
	- [Attacking JavaScript Engines](http://www.phrack.org/papers/attacking_javascript_engines.html)
	- [Heap Feng Shui in JavaScript](https://www.blackhat.com/presentations/bh-europe-07/Sotirov/Presentation/bh-eu-07-sotirov-apr19.pdf)
	- [JIT spraying and mitigations](https://www.piotrbania.com/all/articles/pbania-jit-mitigations2010.pdf)
	- [SoK: Make JIT-Spray Great Again](https://www.usenix.org/system/files/conference/woot18/woot18-paper-gawlik.pdf)
- Reports
	- [Controlled address leak due to type confusion - ASLR bypass](https://hackerone.com/reports/207321) ($100 bounty)
	- [Adobe Flash Player Out-of-Bound Read/Write Vulnerability](https://hackerone.com/reports/31408) ($5000 bounty)
	- [RCE on Steam Client via buffer overflow in Server Info](https://hackerone.com/reports/470520) ($18000 bounty)
	- [heap-buffer-overflow in S_pack_rec](https://hackerone.com/reports/354650) ($1000 bounty)
	- [Nintendo Switch nvservices Info Leak](https://daeken.svbtle.com/nintendo-switch-nvservices-info-leak)
	- [Buffer overflow in HTTP parse_hostinfo(), parse_userinfo() and parse_scheme()](https://hackerone.com/reports/174069) ($1000 bounty)
	- [Use After Free in Flash MessageChannel.send can cause arbitrary code execution](https://hackerone.com/reports/47234) ($7500 bounty)
	- [Virtually Unlimited Memory: Escaping the Chrome Sandbox](https://googleprojectzero.blogspot.com/2019/04/virtually-unlimited-memory-escaping.html)
	- [Splitting atoms in XNU](https://googleprojectzero.blogspot.com/2019/04/splitting-atoms-in-xnu.html)
	- [voucher_swap: Exploiting MIG reference counting in iOS 12](https://googleprojectzero.blogspot.com/2019/01/voucherswap-exploiting-mig-reference.html)
	- [Technical Analysis of the Pegasus Exploits on iOS](https://info.lookout.com/rs/051-ESQ-475/images/pegasus-exploits-technical-details.pdf)

Video
-----

<div class="container">
	<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/NeeCfLNyTwo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
