---
layout: post
category: dailynote
title: "Adding custom snippets to VS Code"
section: til
tags: [vscode]
date: 2023-08-20
published: true
---

I was making a lot of `<marquee>` elements while revamping my website. But when I used the [Emmet tool](https://emmet.io/) to create a marquee element just by typing "marquee", it kept adding attributes I didn't need! So I learned how to make custom snippets, to do it my way.

<!-- all this marquee talk reminds me of blink
yknow modern browsers dont even support <blink>
you gotta use javascript
i mean ie never supported it so damn
marquees are cool but ig theres a lot of things about 90s web design better left in the past
hey uncomment this next comment im bringing back BLINK!!!!!!!!!!! i dont even need javascript
-->

<!-- 
<span style="animation: blinker 1s step-end infinite; display: inline-block;"><style>@keyframes blinker { 50% { opacity: 0; } }</style>thanks for checking out these "easter egg" comments btw</span>
-->

- I wanted to create a custom snippet to insert a marquee element without any attributes, as Emmet defaulted to that and I didn't want it
- What are snippets?
- Why did I want to use marquees in 2023? (for TODOs during site revamps)
- I asked ChatGPT and followed its steps
- Do `Snippets: Configure User Snippets` in the Command Palette and choose the language (html, Liquid, and markdown for me)
- Copy-paste the code it generated
- Then I explain the code
- Use a gif recording or something to show it working

I think it would be funny to include a marquee in this article. Just for the funny.

here's the code btw

```json
"Marquee without attributes": {
  "prefix": "marquee",
  "body": [
   "<marquee>$1</marquee>"
  ],
  "description": "Marquee element without attributes"
 }
```
