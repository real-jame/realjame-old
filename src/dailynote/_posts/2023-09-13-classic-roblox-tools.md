---
layout: post
category: dailynote
title: "Everything about tools in classic Roblox"
tags: [roblox, classic-roblox]
date: 2023-09-13
published: true
---

<!--
    TODO: images
    TODO: links
    TODO: actually writing it
    TODO: put modern Roblox footnotes in proper places when I write it
-->

Working with the classic Roblox (2006-2012) engines and studios is still fairly obscure information. I feel like I've mostly mastered it, but there is one thing that still trips me up...

**Tools.**

I'm writing this guide to end my troubled relationship with these pesky little devils once and for all. To write down a common reference for every mistake I make, so finally, I will have ALL THE POWER IN THE WORLD to make a tool that is a rubber duck and goes _quack_ if you click :^) And I'm writing it for everyone else to learn from too!

### What the heck are tools?

Tools! The vast majority of games with scripting involved, even ones from _2006_ used tools[^1]. They're what shows up in your hotbar, and you can select them with the number keys. All of these were tools:

- Weapons and items (like the ones from brickbattle maps and Sword Fights on the Heights)
- All catalog gears made by Roblox
- Vehicle controls (Y to start, X to stop!)
- Building tools (Copy, Delete, Scale, Color, etc.)

You get the idea. Let's just dive into the nerd info already.

{% include callout.html type="note" content="PS for modern Roblox developers: info about differences and limitations between classic and modern tool scripting are in footnotes." %}

## Tool building

### The tool object

### Wait, what are HopperBins?

### The HopperBin object

### HopperBin.BinType property

### TextureId property

### Tool.ToolTip property

### Handle

### How do you make a handle composed of multiple parts?

(welding)

### How do you stop players from dropping tools?

In 2012, yes, but only for tools. `https://wiki.realja.me/index.php/CanBeDropped_(Property)`

In all previous versions, and with HopperBins, there is no way to prevent tools from being dropped.

TODO: more info - there's probably custom workarounds to move it back when dropped...?

### Tool Grips

## Tool scripting

### First I have to explain the difference between LocalScript (client) and Script (server)

### When do tool scripts execute?

TODO: immediately on character spawn, not when equipped. it even executes if its just in the world in workspace, not under a player

### Where are tools stored?

### Equipping and unequipping events

### How do you get the player?

### Tool.Activated event

### Tool.Active property

### HopperBin.Selected property

### Humanoid.TargetPoint property

### Example: a tool that fires rubber ducks where the mouse clicks

## Tool animating

Animating tools gets its own little section because there's a little bit of depth in it.

### Animating with the StringValue thing

TODO: look into this, I did it before but forgot fully, it's used in the LinkedSword script

### Animating with existing Animation objects

TODO: like the ones used in gears of the time

### Can you make custom Animation objects?

### Animating with CFrames

## Mouse scripting

The Mouse API is so complex and kinda confusing that it's getting its own whole section!

[^modern-mouse]

### How to get the mouse in the first place

[^modern-gettingmouse]

### Can you use the mouse in server-side scripts?

### Changing the mouse icon

### Mouse click events

### Keyboard input events

### "This PlayerMouse is no longer available" error

<hr>

[^1]: To all the nerds in the crowd who already know: yes, HopperBins exist and were used instead of the "Tool" object back then (which didn't even exist in 2006). I'll get to HopperBins, but in this guide, I'm using "tool" (lowercase) as the common name for both a HopperBin and a Tool.
[^modern-mouse]: The Mouse object is the only way to receive user input in classic Roblox. Unfortunately, UserInputService and ContextActionService do not exist.
[^modern-gettingmouse]: Classic does not have the Player:GetMouse() method.
