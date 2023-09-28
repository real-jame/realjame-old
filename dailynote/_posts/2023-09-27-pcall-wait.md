---
layout: post
category: dailynote
title: "Odd behavior with wait() in pcall() functions in classic Roblox versions"
tags: [roblox, classic-roblox, tech, lua]
date: 2023-09-27
published: true
---
As I've worked on [Project Micrathena](/projects/micrathena), I've had a strange bug tripping me up, where round timers tick *twice* following the minigame phase. Turns out trying to wait() inside a pcall causes a lot of weird behavior in these old versions.

The first time it happened, I did random stuff and it mysteriously went away. When it returned a week later, I used a [diff checker tool](https://diffchecker.com) to compare the current Round script with one from an earlier Git commit where the bug wasn't there. And after looking for a bit, I noticed one thing... pcall.

PIC OF THE CODE HERE

The pcalls looked normal - they called [_G functions]() (global functions across all scripts)