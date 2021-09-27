---
layout: page
title: Haptyc
subtitle: A Library for Building Microfuzzers in Turbo Intruder
video_src: https://www.youtube-nocookie.com/embed/-0EKtM4wz2o

---

About the Speaker 
-----------------
Evan Custodio has a background in Computer Engineering where he has 12 years experience in building hardware security architectures on FPGAs. In the last 2 years he has focused on bug bounties, web application pentesting, hardware systems pentesting and security research.
                       

Abstract
-----------------
When James Kettle introduced Turbo Intruder back in 2019 the goal was always speed. When one compares Turbo Intruder to traditional Intruder several features are noticeably absent. Firstly, the ability to define multiple user-defined positions. Secondly, the ability to orchestrate battering ram and cluster bomb style of attacks. Lastly, the ability to mutate user-defined positions and to perform all of this using elegant and modular python code. Hyptyc is a python library and testing framework whose mission is to add these capabilities into Turbo Intruder so that it is at 90% feature parity to traditional Intruder. By allowing hackers to define “Haptyc transform tags” as a pseudo-markup for their requests, they can create positions in Turbo Intruder and develop code on how they would like to mutate these positions per request. Because Haptyc transforms are modular and generic in nature this also makes each implementation portable and re-usable across different HTTP requests which reduces the amount of request-specific spaghetti code inside python. Beginner hackers who don’t understand python can use Haptyc examples as-is to perform powerful fuzzing attacks. Advanced hackers familiar with python and Turbo Intruder can develop very powerful sophisticated fuzzers with this framework