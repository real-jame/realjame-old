---
layout: dailynote
category: dailynote
title: "Adding custom snippets to VS Code"
section: til
tags: [vscode]
# image: /blog/media/TODO.png
# description: ""
date: 2023-08-20
published: true
---
<marquee>TODO: this article.</marquee>

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
