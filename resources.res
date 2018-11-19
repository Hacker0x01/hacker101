& What is Hacker101?

Hacker101 is a free educational resource developed by <a href="https://www.hackerone.com/">HackerOne</a> to grow and empower the hacker community at large.  We have video lessons and curated resources to help you learn the concepts of hacking and a <a href="https://ctf.hacker101.com/">Capture the Flag</a> where you can turn that theory into practice.

& What is the Hacker101 CTF?

The <a href="https://ctf.hacker101.com/">Hacker101 CTF</a> -- or Capture the Flag -- is a game where you hack through levels to find bits of data called flags.  These flags mark your progress and allow you to receive invitations to private programs on <a href="https://www.hackerone.com/">HackerOne</a>, where you can use your newly-learned skills.

& I'm new to all of this; how do I get started?

Congratulations on taking the first step to becoming a hacker!

We recommend starting with our <a href="playlists/newcomers">Hacker101 for Newcomers</a> and <a href="playlists/burp_suite">Burp Suite</a> playlists.  Once you've completed that, start working through the <a href="https://ctf.hacker101.com/">Hacker101 CTF</a> and watching the other <a href="videos">video lessons</a> as you need them.

While there are no prerequisites for Hacker101, strictly speaking, there are things you can learn to accelerate your hacking education.  Note that you don't need to know all of this -- or any -- to get started.  Here's a curated list of resources:
<ul>
	<li>Programming
		<ul>
			<li><a href="https://javascript.info/">JavaScript</a>: This is the language used on the majority of web pages. Understanding it is useful for bug hunting because many bugs actually stem from JS code.</li>
			<li><a href="https://docs.python.org/3/tutorial/">Python</a>: Commonly used for automating various activities during testing, as well as being useful for general programming.</li>
			<li><a href="https://sqlbolt.com/">SQL</a>: Used by most applications for accessing and manipulating data. Knowledge of SQL will help in discovering and exploiting critical SQL Injection vulnerabilities.</li>
		</ul>
	</li>
	<li>Networking
		<ul>
			<li><a href="https://www.digitalocean.com/community/tutorials/an-introduction-to-networking-terminology-interfaces-and-protocols">Terminology guide</a>: You'll hear many terms from IP address to port to DNS. This guide will help you understand that.</li>
			<li><a href="https://www.utilizewindows.com/list-of-common-network-port-numbers/">Common Port Numbers</a>: A useful list of common port numbers and the associated services.</li>
		</ul>
	</li>
	<li>Linux
		<ul>
			<li><a href="https://www.linux.com/learn/easy-lamp-server-installation">Setting up your own web server</a>: While not security-related in itself, this will teach you many of the commands and concepts you need to know to become a great hacker.</li>
			<li><a href="https://linuxconfig.org/how-to-install-kali-linux-on-virtualbox">Setting up Kali Linux on Virtualbox</a>: Kali is a hacking-oriented Linux distribution, used by many bug hunters. This guide will help you set it up in a virtual machine.</li>
			<li><a href="https://lifehacker.com/5633909/who-needs-a-mouse-learn-to-use-the-command-line-for-almost-anything">Command Line Guide</a>: You'll end up using many command-line tools as a hacker, so a familiarity with its structure and use is valuable.</li>
		</ul>
	</li>
</ul>

& I've been hacking for a while now; how do I get into bug bounties?

We recommend <a href="https://hackerone.com/users/sign_up">signing up</a> for a HackerOne account and checking out our extensive programs.  Additionally, you can earn invitations to private programs on HackerOne via the <a href="https://ctf.hacker101.com/">Hacker101 CTF</a>.  This gets you into programs with fewer hackers, often making it easier to find interesting and impactful bugs.

& Programming languages

Programming is an important part of being a successful hacker.  This isn't a comprehensive list of programming languages and nearly any can be used for most hacking tasks, especially on the web, but rather a list of languages we find especially useful or notable.

<ul>
	<li>Python and Ruby: Useful for automation and quick testing and analysis, particularly for web hacking.</li>
	<li>JavaScript: Can be used for the same tasks as Python and Ruby (albeit with fewer relevant libraries), but mostly useful to know for analysis of code on the web, as well as exploitation.</li>
	<li>Objective-C and Swift: The ability to read these will be essential if you plan to do source code review of iOS applications.</li>
	<li>Java and Kotlin: The ability to read these will be essential if you plan to do source code review of Android applications.  Java is produced by decompilers for Android applications, which allows you to read code (roughly) equivalent to the original source, even when you only have a compiled application.</li>
	<li>AArch64 assembly: For advanced embedded and mobile hacking, understanding the very lowest level of abstraction is essential.</li>
</ul>

& Web hacking tools

This is a curated list of web hacking tools and is not intended to be comprehensive; rather, we want to highlight the tools we find especially useful.

<ul>
	<li><a href="https://portswigger.net/burp">Burp Suite</a>: This is the most popular proxy in web hacking circles due to its cross-platform nature and extensive featureset. See <a href="playlists/burp_suite">our playlist</a> to make the most of it.</li>
	<li><a href="https://mitmproxy.org/">mitmproxy</a>: This is an open-source proxy written in Python.  Not recommended for beginners, but this can be a powerful tool.</li>
	<li><a href="http://sqlmap.org/">sqlmap</a>: This allows for easy discovery and exploitation of SQL injection vulnerabilities. It <b>will not</b> catch every bug or even be able to exploit some known SQLi bugs. What it will do is make your life much easier in the 80% of cases it will work for.</li>
	<li><a href="https://www.ssllabs.com/ssltest/">SSL Labs Server Test</a>: This is an easy to use webapp for testing the SSL configuration of web servers.</li>
	<li><a href="https://www.owasp.org/index.php/Category:OWASP_DirBuster_Project">DirBuster</a>: This is useful for finding hidden files and directories on web servers.</li>
	<li><a href="https://cirt.net/Nikto2">Nikto2</a>: Like DirBuster, but also does some basic checks for known vulnerabilities.</li>
	<li><a href="https://github.com/nahamsec/lazyrecon">lazyrecon</a>: This is an assembled collection of tools for performing recon.</li>
</ul>

& Mobile hacking tools

This is a curated list of mobile hacking tools and is not intended to be comprehensive; rather, we want to highlight the tools we find especially useful.

<ul>
	<li><a href="https://portswigger.net/burp">Burp Suite</a>: This is the most popular proxy in web hacking circles due to its cross-platform nature and extensive featureset. See <a href="playlists/burp_suite">our playlist</a> to make the most of it.</li>
	<li><a href="https://www.frida.re/">Frida</a>: This is an instrumentation system allowing injection of JavaScript or native libraries into arbitrary mobile applications on iOS and Android. In essence, it makes it painless to change, enhance, or disable functionality in applications.</li>
	<li><a href="https://github.com/pxb1988/dex2jar">dex2jar</a>: Converts dex code (Android bytecode) into Java JAR files for manipulation or decompilation.</li>
	<li><a href="http://jd.benow.ca/">JD-GUI</a>: This is a Java decompiler, useful after dex2jar for easy analysis of Android apps.</li>
	<li><a href="https://www.jetbrains.com/decompiler/">dotPeek</a>: A .NET decompiler, for use with Xamarin Android applications.</li>
</ul>

& Desktop/embedded hacking tools

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

&end