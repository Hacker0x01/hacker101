#!/bin/bash
# download raw html, requires youtube-dl, tested on osx
# wget --mirror --convert-links --html-extension --wait=1 --adjust-extension --page-requisites -nc www.hacker101.com 
# cd www.hacker101.com
# extract all the youtube links and then download them in 720p
mkdir videos
cd videos
find ../. -name "*.html" -exec cat {} \; | grep youtube-nocookie | awk 'gsub(/.*src="|\?rel.*/,"")' | youtube-dl -f 22 -a -
