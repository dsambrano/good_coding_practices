#!/usr/bin/env python3

import datetime

filename = input("File Name: ").replace(" ", "_")
name = filename.replace("_", " ")
name = "_".join(name.split(".")[:-1])
date = datetime.date.today().strftime("%Y-%m-%d")

difficulty = input("Difficulty level: [Beginner]/Intermediate/Advanced ").lower()

beginner = ["beginner", "b", ""]
intermediate = ["intermediate", "i"]
advanced = ["advanced", "a"]

if difficulty in beginner:
    diff_text = '<span style="color:green">Beginning</span>'
    diff_time = 10
    h2 = f'{name.capitalize()} Basics'
elif difficulty in intermediate:
    diff_text = '<span style="color:yellow">Intermediate</span>'
    diff_time = 20
    h2 = f'What is {name.capitalize()}?'
elif difficulty in advanced:
    diff_text = '<span style="color:red">Advanced</span>'
    diff_time = 30
    h2 = f'What is {name.capitalize()}?'
else:
    exit()


contents = f'''
---
layout: post
title:  "{name.capitalize()}"
date: {date}
author: Deshawn Sambrano
tags: 
time: {diff_time}
#category: false
#series: false
#permalink: 
diff: expert
draft: true
usemathjax: true
---

{% include sidebar.html %}

<section class="takeaways">

In this blog you will learn the basics of {name}. Specifically you will learn:
- 
- 
-

Prerequisites:
- None

</section>

## {h2}

<!-- excerpt-start -->


<!-- excerpt-end -->

## Now its Your Turn!


## References
'''
with open(f"{filename}.md", 'w') as f:
    f.write(contents)
