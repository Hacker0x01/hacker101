---
layout: default
title: Example HackerOne Threat Model
---

Access levels:

- Unauthenticated

Entrypoints [non-static]:

- Hacktivity: <https://hackerone.com/hacktivity?sort_type=latest_disclosable_activity_at&filter=type%3Aall&page=1&range=forever>
- Report: <https://hackerone.com/reports/228648>
- Program policy: <https://hackerone.com/security>
- Program hacktivity: <https://hackerone.com/security/hacktivity?sort_type=latest_disclosable_activity_at&filter=type%3Aall%20to%3Asecurity&page=1&range=forever>
- Program thanks: <https://hackerone.com/security/thanks>
- Program updates: <https://hackerone.com/security/updates>
- HackerOne Response contact: <https://www.hackerone.com/product/response#contact>
- HackerOne Challenge contact: <https://www.hackerone.com/product/challenge#contact>
- HackerOne Bounty contact: <https://www.hackerone.com/product/bounty#contact>
- Sales contact: <https://www.hackerone.com/contact>
- Leaderboard: <https://hackerone.com/leaderboard/all-time>
- Program Directory: <https://hackerone.com/directory?query=type%3Ahackerone&sort=resolved_reports_closed%3Adescending>
- Blog: <https://www.hackerone.com/blog>
- Team signup: <https://hackerone.com/teams/new>
- User signup: <https://hackerone.com/users/sign_up>
- Forgot password: <https://hackerone.com/users/password/new>
- Press: <https://www.hackerone.com/press>

Target assets:

- User credentials and PII
- Private program names
- Confidential bug reports
- Database credentials

Top priority:

- Hacktivity (global and program), Program Directory
- Sign-in
- Sign-up forms
- Forgot password
- Contact forms
