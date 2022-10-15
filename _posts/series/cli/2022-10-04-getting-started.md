---
layout: post
title:  "Getting Started: Bash em, I don't even know em"
date: 2022-10-03
author: Deshawn Sambrano
tags: Coding Unix Bash Shell
time: 10
draft: true
usemathjax: true
category: cli
series: cli
diff: intermediate
---

{% include sidebar.html %}

<section class="takeaways">

In this post you will learn about `bash`, `zsh`, and the differences for OSes. Specifically, after this post you will understand:
- What `bash` is and what it stands for
- Where `bash` is used

Prerequisites:
- None; Although it may be helpful to have read through the series [intro][]

</section>

## Apperance is Important

<!-- excerpt-start -->
Change your Default Terminal Colors **NOW**!

> The happier you are when you look at your terminal the happier you will be when coding.
More Happy means more coding.
More Coding means more practice.
More practice means Great Coder!

This same principle applies for all text editors/IDEs (integrated developer environment) by the way.
It sounds like a joke, but seriously, take some time to have a nice looking coding environment.

In order to change them, you should be able to create a default profile for most terminal emulators and change the color scheme, opacity, font, background image, etc.


## Know your OS

Knowing what OS you are on is super important as the commands change across them. 
Luckily Linux and MacOS share most of the commands because they use the same shell (you have probably heard of `bash` before). 
This is especially useful to know, because all servers and super computers/computing clusters all run Linux, so having familiarity with this shell via using MacOS is very valuable.

In contrast, Windows uses CMD or Powershell which has a differnt syntax and command list. 
Luckily though, there are two options to get access to `bash` using Windows.
The first it a project called called [gitbash][], which is designed to give you access to the unix commands and meant to help with git specifically.
The other option is [Windows Subsystem for Linux (WSL)][wsl], which is built by microsoft to allow you to directly use linux from withing your Windows machine.
I highly reccomand that you use one of these be able to follow along.
If this is your first time trying this out, I recommend [gitbash][], but if you plan on doing a lot of coding in `bash` or you just want to see what all the linux fuss is about, go for [Windows Subsystem for Linux (WSL)][wsl].
Most of the time if you get some CLI (command line interface) code it will assume bash, so its just a good skill to have.

Speaking of `bash` it stands for Bourne Again SHell. 
However, recently (since around 2019 or so) both MacOS and many Linux distros switched the default shell to `zsh` (or The Z shell). 
This is, for the most part, entirely compatible with `bash` except that it adds some nice quality of life improvements that are beyond the scope of this series, but feel free to explore on your own ([differences bewteen `bash` and `zsh`][shelldiff]).
I will say that for Mac users specifically, I would reccomend you check out [iTerm2][] as an alternative to the standard terminal and [oh my zsh][ohmyzsh] to add some amazing color theming for some general improvements. 
But of course this is not necessary. *Mac users, I will be uploading an install script to match my own setup. And a link to it will be updated here.*

## Further Exploration

As you can imagine, this is just a taste of the command line. You can do so so much more. Hopefully this was just enough to wet your appetite, and make you eager to explore more. One great place to start is with [Modern Unix][munix]. This is a project that has upgrades many of the commands we just talked about to fit with the modern world, (e.g., adding colors, speed, etc.). Another way to speed things up is to make alias which you can write short hand for really long commands.


[wsl]: https://learn.microsoft.com/en-us/windows/wsl/install "Windows Subsystem for Linux"
[shelldiff]: https://linuxhint.com/differences_between_bash_zsh/ "Differences between Bash and ZSH"
[munix]: https://github.com/ibraheemdev/modern-unix "Modern Unix"
[gitbash]: https://gitforwindows.org/ "Git for Windows"
[iTerm2]: https://iterm2.com/ "iTerm2: Terminal Emulator for MacOS"
[ohmyzsh]: https://ohmyz.sh/ "Oh My Zsh: Prettify you Terminal"
[bash-structure]: #the-form-of-commands "The Structure of a Bash Command"
[intro]: {% link _posts/series/cli/2022-10-03-cli.md %}

