---
layout: post
category: dailynote
title: "Odd behavior with wait() in pcall() functions in classic Roblox versions"
tags: [roblox, classic-roblox, tech, lua]
date: 2023-09-27
published: false
---
As I've worked on [Project Micrathena](/projects/micrathena), I've had a strange bug tripping me up, where round timers tick *twice* following the minigame phase. Turns out trying to wait() inside a pcall causes a lot of weird behavior in these old versions.

The first time it happened, I did random stuff and it mysteriously went away. When it returned a week later, I used a [diff checker tool](https://diffchecker.com) to compare the current Round script with one from an earlier Git commit where the bug wasn't there. And after looking for a bit, I noticed one thing... pcall.

PIC OF THE CODE HERE

The pcalls looked normal, they just call [_G functions]() (global functions across all scripts) - I organized the game's codebase by putting functions for game mechanics or just useful functions for scripting in global functions, it's almost like a messy/hacky alternative to modules, which were added in 2013. (I'll definitely write a daily note on this)

Anyways, it was my first thought. "Would one of the scripts happen to have a... wait? Is that causing it?"

So I looked into the functions and... yep.

IMG HERE

This function creates a "text orb" - which is basically just a 1x1 spherical part that uses a Humanoid + Model + Head part setup to have text appear above it. The function plays a brief animation of slowly ascending upwards a stud or 2 to reach the intended position when it is first inserted.

GIF OF THAT HERE

So I commented out the pcalls, and no more problems. But is it really wait in pcall? I quickly made a simple thing on a empty baseplate map that somewhat recreates the ticking system - a Hint object, an IntValue object, a script that constantly updates the hint text to display the current Intvalue's value, and a script that increments the value every second. But this script has an additional feature - when the value has increased by 5, it tries to run a pcall that contains a wait().

If I'm right, then the value will increment twice every second after the first time the pcall happens. 3 times a second after the 2nd pcall, and so on. Let's run it.

GIF OF THAT HERE

So trying to wait in a pcall *does* come with weird behavior beyond just aborting! This has never been mentioned **anywhere** not on the [2012 Wiki](https://wiki.realja.me), modern documentation, or the DevForums.

And speaking of modern, I tried running the place in modern Roblox Studio and... it doesn't work.

## So what?

What's the takeaway? Don't use waits in your pcalls... but the wiki has always told you that wait does not work in a pcall, so you shouldn't be doing it anyways. But when you start moving code into other places, like I did with _G, it gets easy to not notice, and the engine doesn't tell you when it happens. So really, its a reminder that you gotta be, you know, aware of everything your codebase is doing. Which is a hard task! So get good at debugging too :^)
