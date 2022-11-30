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


## Installing Git

<!-- excerpt-start -->
First double check to see if you have git installed already by typing `git -v` in your terminal.
If you get a command not found error, then you don't have it installed.
If it spits out a version, then you are good to go (though you may need to update it). If you already have git installed you can skip the [installation section][after-install]. Otherwise go to the installation section relavent to your computer's software and continue.

<!-- excerpt-end -->

### Mac OS

Many programming and scientific applications require `xcode` on Mac, which installs `git` automatically, so you might have it already.
Double check by using the method described [above][installation].
If you don't that's ok because you will definitely  `xcode` in the future.
Inside your terminal of choice, type the following command to install `xcode`:

```
xcode-select --install

```

If you have a [package managers][packagemanager] like homebrew or MacPorts, you can install them via these methods as well (e.g., `brew install git`).

Finally, you can use the GUI installer go the [Binary installer section](https://git-scm.com/download/mac)

>**Hint**: If you don't already have it installed, you might want to install homebrew with the following command `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

### Linux
On most linux distros you can simply use the relavent package manager to install `git`.
For example on debian based distros: `sudo apt install git-all`. But in most many cases its installed by default or with the standard dev tools.

### Windows

You can install git via `chocolately` or the [GUI installer](https://git-scm.com/download/win).
Additionally, you can also install git with linux via the Window's subsystem for Linux pipeline, if you are familiar with that.
Finally, for beginner users specifically, I would recommend that you install [gitbash](https://gitforwindows.org/), so in addition to git, you can also use all the bash commands on Windows.


<!-- ## Homework
Something about setting up a repo and
-->


<!--REFERENCES-->

<!--INTERNAL-->
[cli]: {{site.data.links["series"]["bash-basics"]}}
[markdown]: {% post_url 2022-10-03-markdown %}
[after-install]: #
[installation]: #installing-git
[packagemanager]: {{site.data.links["general"]["package-managers"]}}
