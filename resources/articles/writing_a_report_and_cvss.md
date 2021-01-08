---
layout: default
title: How to Write a Good Report and Use the CVSS Calculator
---

# How to Write a Good Report and Use the CVSS Calculator
<hr style="height:2px;border-width:0;color:gray;background-color:gray">

## Introduction 

When you are submitting a vulnerability report to a company, it is very important to be able to communicate your findings in a clear and concise manner, where the security or triage team receiving your report are able to reproduce it as quickly as possible. 

A well-written report, consists of: 
- A title describing the vulnerable site, endpoint, and the vulnerability type 
- CWE & CVSS score describing the criticality of the vulnerability
- Clear reproduction steps
- An impact statement 


Including the above information will improve readability and reproduction speed. Length of a report is not something to aim for. The goal is to keep it short and to the point while including all the details necessary to help the triage/security team reproduce your report as fast as possible.

Readability and proper formatting also plays a big role in reproducing your submission. The better it’s presented and structured the easier and faster the security team on the receiving end will be able to reproduce it. HackerOne allows hackers to use [markdown](https://docs.hackerone.com/programs/using-markdown.html) while submitting a new report within the platform. We highly encourage you to get familiar with markdown as much as possible, especially with greetings [lists](https://docs.hackerone.com/programs/using-markdown.html#attachment-references), using [links](https://docs.hackerone.com/programs/using-markdown.html#attachment-references), and [embedding attachments](https://docs.hackerone.com/programs/using-markdown.html#attachment-references) and [code](https://docs.hackerone.com/programs/using-markdown.html#attachment-references). 

Now that we have gotten that out of the way, let’s jump right into it!

## Creating a Report Title

A good title helps security teams prioritize reports as they are making their way through their inbox. For example, a security team may prioritize a Remote Code Execution in their production site over a low impact CSRF on a marketing website. In addition to helping with prioritization, a good title helps security teams identify and search for possible duplicates faster because they are giving them all the information needed within the title of your report. 

- The best way to come up with a title is to ask yourself “How do I describe this vulnerability in 140 characters or less”.  Include either the functionality or the vulnerable asset or endpoint, as well as the vulnerability type and its impact. 

Let’s look at a few examples of good report title: 

- Stored XSS in profile.php via user’s signature on app.acme.org leads to account takeover when emailing other users
- [Reflected XSS on https://e.mail.ru/compose/ via Body parameter](https://hackerone.com/reports/1000363)
- [Remote Code Execution on kitcrm using bulk customer update of Priority Products](https://hackerone.com/reports/422944)
- [Admin Command Injection via username in user_archive ExportCsvFile](https://hackerone.com/reports/214022)

## What is CWE & CVSS and how they work together 

Common Weakness Enumeration (CWE) is a community-developed list of common software security weaknesses. It serves as a common language, a measuring stick for software security tools, and as a baseline for weakness identification, mitigation, and prevention efforts. When it comes to picking the right Common Weakness Enumeration (CWE), this should be based on the initial vulnerability you have discovered. This will also indirectly help you understand the impact of the vulnerability as well as its CVSS. 

When it comes down to selecting the severity of your vulnerability submission,use CVSS (or Common Vulnerability Scoring System) to communicate why you have chosen this particular severity for your submission. 

![CVSS Calculator](/assets/images/articles/CVSScalc.png)

### How to use the CVSS Calculator

CVSS is broken down into 8 different metrics. In this section, we’ll explore each one and how to pick the right choice when filing a submission on HackerOne. 

#### Attack Vector 
This metric tells the security team how this vulnerability can be exploited. The Score increases the more remote (logically, and physically) an attacker can be in order to exploit the vulnerable component. Describing deeply the 4 scenarios, we can have: a Remote attack when the exploit can be delivered over the Internet, an Adjacent attack vector when the malicious actor is inside the same intranet of the victim, a Local scenario is when the issue lies at operating system accounts level, and finally a Physical attack vector is when you can physically access the victim's device.

#### Attack Complexity 
Attack Complexity describes the conditions beyond your control that must be met in order for the vulnerability to be exploited. For example, does it require additional information about the target such as unguessable IDs, a certain configuration or settings, valid credentials (e.g. for MFA issues), or some other conditions in order for your exploit to work? 

#### Privileges Required  
This metric indicates the type of privileges an attacker must achieve before successfully exploiting the vulnerability. This Score increases as fewer privileges are required. For example, if the vulnerable component is within an admin panel, we recommend setting the requirement to “High” versus a vulnerability where you need to be invited to an organization by an admin (where as self registration is not possible) we recommend privileges to be as low.

#### User Interaction 

This metric captures the requirement for a user, other than the attacker, to participate in the successful compromise of the vulnerable component. This metric determines whether the vulnerability can be exploited solely at the will of the attacker, or whether a separate user (or user-initiated process) must participate in some manner. The Score is highest when no user interaction is required since it increases a further step in the exploitability of the attack.

#### Scope
Does a successful attack impact a component other than the vulnerable component? If so, the Score increases and the Confidentiality, Integrity and Authentication metrics should be scored relative to the impacted component.

#### Confidentiality 
This metric measures the impact on the confidentiality of the information resources managed by a software due to a successfully exploited vulnerability. Confidentiality refers to limiting information access and disclosure to only authorized users, as well as preventing access by, or disclosure to, unauthorized. In the context of bug bounties, think of this as how sensitive is the data which is exposed due to this vulnerability. 

#### Integrity 
This metric measures the impact to the integrity of a successfully exploited vulnerability. Integrity refers to the trustworthiness and veracity of information.

#### Availability
This metric measures the impact to the availability of the impacted component resulting from a successfully exploited vulnerability. It refers to the loss of availability of the impacted component itself, such as a networked service (e.g., web, database, email). Since availability refers to the accessibility of information resources, attacks that consume network bandwidth, processor cycles, or disk space all impact the availability of an impacted component.

### Examples
#### Stored XSS from authenticated user to an unauthenticated user

**Attack Vector:** `Network` as the attack can be done over the Internet<br>
**Attack Complexity:** `Low` as there are no particular premises needed for this attack to be successful<br>
**Privileges Required:** `None` if the attacker can deliver the payload as unauthenticated. Or we can set it to `Low` if the attacker needs to be authenticated in order to deliver the payload<br>
**User Interaction:** `Required` in case the user has to do some non-basic interaction with the website in order to trigger the payload (like clicking a link). `None` in case the victim needs to visit the homepage or do very trivial interactions with the website <br>
**Scope:** `Changed` since the vulnerable component is the web server and the impacted component is the browser <br>
**Confidentiality:** `Low` - if access to the DOM is granted. `None`, if there is no access to the DOM <br>
**Integrity:** `Low` since XSS can always cause defacement <br>
**Availability:** `None` because the application can still be used by the victims


### Stored XSS from an admin to a user

**Attack Vector:** `Network` as the attack can be done over the Internet<br>
**Attack Complexity:** `Low` as there are no particular premises needed for this attack to be successful<br>
**Privileges Required:** `High` because the attackers needs to be an admin in order for this vulnerability to be exploited <br>
**User Interaction:** `Required` in case the user has to do some non-basic interaction with the website in order to trigger the payload (like clicking a link). `None` in case the victim needs to visit the homepage or do very trivial interactions with the website <br>
**Scope:** `Changed` since the vulnerable component is the web server and the impacted component is the browser<br>
**Confidentiality:** `Low` if access to the DOM is granted, `None` if there is no access to the DOM <br>
**Integrity:** `Low` the XSS can always cause defacement<br>
**Availability:** `None` because the application can still be used by the victims

### IDOR with access to read and modify personally identifiable information (PII)

**Attack Vector:** `Network` as the attack can be done over the Internet <br>
**Attack Complexity:** `High` if they are UUIDs or high-entropy IDs. `Low` if they are sequential IDs <br>
**Privileges Required:**  `Low` the attacker needs to be logged in to perform the attack <br>
**User Interaction:** `None` as this is solely a server side issue <br>
**Scope:** `Unchanged` the impacted and the vulnerable component are the same i.e. the web server <br>
**Confidentiality:**  `High` becaus it gives access to PII <br>
**Integrity:** `High` because the attacker can delete/modify data <br>
**Availability:** `None` because the application can still be used by the victims <br>


### Full response SSRF vs blind SSRF

**Attack Vector:** `Network` as the attack can be done over the Internet<br>
**Attack Complexity:**  `Low` since the attack is normally straight-forward<br>
**Privileges Required:**  `Low/High` according to the level of privilege of the account linked to the vulnerable functionality<br>
**User Interaction:** `None` as this is solely a server side issue<br>
**Scope:** `Unchanged` - in case of local port scanning as the impacted component remains the web server. `Changed` if AWS or local file exfil is possible since the impacted component is the cloud infrastructure<br>
**Confidentiality:** `Low/High` depending on the type of information shown. `None:` in case of Blind SSRF (no output)<br>
**Integrity:** `High` in case AWS are leaked as it could lead to RCE. `Low` in case the attacker can only access the intranet or the AWS<br>
**Availability:** `None` because the application can still be used even if this has been fully exploited (this does not include some edge cases where SSRF can take down a service)<br>

## Reproduction steps
The reproduction steps are one of (if not the) most important part of your submission. The better and more concise the steps, the easier it will be for the receiving team to reproduce and triage your submission. Before starting this part of your submission, think of how you can help a friend reproduce this vulnerability on the target site, without any prior knowledge or experience with the application. So in other words, how can you help someone that’s never used this application, replicate your vulnerability by following your reproduction steps. Our recommendation is to use the following structure to write your submission:

- Description / Introduction 
- Working proof of concept
- HTTP request 
	- Please make sure to submit this as text and not as a screenshot so the triage team can copy/paste the required information
- HTTP Response or the DOM (if needed)
- Impact Statement 

When writing your proof of concept, make sure to include every step necessary from the beginning all the way to the end where the vulnerability is fully exploited. Ask yourself the following questionScope: 
- "Does this require the user to be authenticated? If so, where do they sign up?". Make sure you include a link to it.
- "How can the security team receiving the vulnerability, access the vulnerable component?". While it’s great to directly link to the vulnerable component, It’s always recommended to describe what menus to navigate through, in order to avoid any complications. We recommend including links as well as how to navigate to the particular functionality. 
- "What additional information can I include to make sure they are able to reproduce this issue". This is very important, especially if you are having a hard time reproducing a vulnerability on your own because of some conditions or issues on the website.

As you can see in ["SSRF in Exchange leads to ROOT access in all instances](https://hackerone.com/reports/341876), 0xacb has included the smallest bit of details from logging and creating a new store, how to access the required exchange app, HTTP request using curl, as well as the response to show the outcome of each request.

## Impact Statement
The impact statement is a great place to help the security team understand the worst case that could happen if your vulnerability was fully exploited. When filling out this portion of your submission, always ask yourself “if this bug were exploited, what could happen?”. Often, because we are communicating via text, things may not be as clear as we think we are. Take advantage of this part of the submission process to communicate the impact of your vulnerability! 


## Conclusion
Writing a good report saves time for everybody. If the report is well written, it will decrease the time to triage and bounty in comparison to a report that may need more information in order to be validated. 

## Examples of Good Reports
### Server Side Vulnerabilities
- [SSRF in Exchange leads to ROOT access in all instances](https://hackerone.com/reports/341876)
- [Remote Code Execution in Slack desktop apps + bonus](https://hackerone.com/reports/783877)
- [SSRF vulnerability on proxy.duckduckgo.com (access to metadata server on AWS)](https://hackerone.com/reports/395521)

### Insecure Direct Object Reference
- [Full name of other accounts exposed through NR API Explorer (another workaround of #476958)](https://hackerone.com/reports/520518)
- [A staff member with no permissions can edit Store Customer Email](https://hackerone.com/reports/980511)

### Open Redirect & XSS 
- [XSS while logging using Google](https://hackerone.com/reports/691611)
- [Cross-site Scripting (XSS) on HackerOne careers page](https://hackerone.com/reports/474656)

<hr style="height:2px;border-width:0;color:gray;background-color:gray">

## Suggested Articles:
- [How and When to Ask for More Help](/resources/articles/asking_for_help)
- [Understanding the HackerOne Code of Conduct](/resources/articles/code_of_conduct)
