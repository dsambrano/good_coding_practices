---
layout: post
title:  "Installing Git"
date: 2022-10-03
author: Deshawn Sambrano
tags: Coding Git GitHub
time: 20
category: git
series: git
draft: true
usemathjax: true
diff: beginner

---

{% include sidebar.html %}

<section class="takeaways">

In this post you will learn how to install Git. By the end of the post you will:
- Know how to install `git` on your computer

Prerequisites:
- None; though it may be helpful to skim through the [Command Line (Bash/zsh)][cli] post first, especially if you do not know how to use the terminal or how to use a bash. 

</section>


## Installation

<!-- excerpt-start -->
First double check if you have git installed already via typing `git -v` in your terminal. 
If you get a command not found error then you don't have it install if it spits out a version then you are good to go (though you may need to update it). If you already have git installed you can skip the [installation section](#git-basics). Otherwise go to the installation section relavent to your computer's software and continue.

<!-- excerpt-end -->

### Mac OS

Many scientific applications requires `xcode` on Mac which install `git` automatically so you might have it. 
Double check by using the method described [above](#installation). 
If you don't that's ok because you will definitely need it in the future. 
Inside your terminal of choice, type the following command to install `xcode`:
```
xcode-select --install
```

If you know what homebrew or MacPorts are, you can install them via these methods as well.

Finally, you can use the GUI installer go the [Binary installer section](https://git-scm.com/download/mac)

>**Hint**: You might want to install homebrew with the following command `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

### Linux
On most linux distros you can simply use the relavent package manager to install `git`. 
For example on debian based distros: `sudo apt install git-all`. But in most many cases its installed by default or with the standard dev tools.

### Windows

You can install git via `chocolately` or the [GUI installer](https://git-scm.com/download/win).
Finally, you can also install git with linux viw the Window's subsystem for Linux pipeline, if you are familiar with that.
> **Hint**: it might be helpful to install [gitbash](https://gitforwindows.org/), so in addition to get, you can also use all the bash commands. 


<!-- ## Homework
Something about setting up a repo and 
-->


[cli]: {% post_url /series/cli/2022-10-10-bash %}
[markdown]: {% post_url 2022-10-03-markdown %}
