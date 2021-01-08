---
layout: page
title:  Graphing Out Internal Networks with CVE-2020-13379 (Unauthed Grafana SSRF)
---

Speaker 
-----------------
Justin Gardner is a full-time bug bounty hunter based near Tokyo, Japan. His focus in the security space is on web vulnerabilities and automated reconnaissance as pertains to bug bounty hunting. Before bug bounty hunting full-time, Justin was held various roles in IT ranging from software developer to IT architect, as well as consulting as a penetration tester with SynerComm for 2 years. Outside of security, Justin loves Jesus, spending time with his wife Mariah, volleyball, learning languages, and Brazilian jiu-jitsu.

Abstract
-----------------
This talk outlines the experience of discovering a full-read unauthed SSRF vulnerability in a product used by thousands of companies in their DMZs. There will be 3 main sections of this talk: the discovery, the exploitation, and the results. 
 
 Starting with the discovery of this bug, we'll discuss some methodology of looking at open-source software for security vulnerabilities and how this led to the discovery of CVE-2020-13379. Included in this section will be defining your goals for what kind of impact you wish to achieve, identifying areas of interest, and perseverance (also known as going down the rabbit hole). 
 
 From there, we'll dive into a demo of the bug. This will include a working PoC for CVE-2020-13379, an exploitation kit that will assist in full exploitation, and a summary of some useful escalation techniques. We will also discuss what it looks like to use this bug against companies who host Grafana instances in the DMZ or in the internal network. 
 
 To bring it all around, we'll talk about the experience of reporting this bug to different vendors and mass-exploitation across bug bounty programs. This will include some lessons learned from mass-exploitation, some awesome collaboration with very skilled hackers, and some great interactions with programs.

Video
-----

<div class="container">
	<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/NWHOmYbLrZ0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>