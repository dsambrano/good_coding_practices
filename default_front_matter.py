
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
usemathjax: false
---

{{% include sidebar.html %}}

<section class="takeaways">

In this blog you will learn the basics of {name}. Specifically you will learn:
- 
- 
-

Prerequisites:
- None

</section>


<!--REFERENCES-->


<!--Internal Links-->
[bash]: {{site.data.links["bash"]["file-navigation"]}}
[packagemanager]: {{site.data.links["general"]["package-managers"]}}
'''
