---
layout: post
title:  "Choosing a Terminal"
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

In this post you will learn about `bash`, `zsh`, and the different terminals for the various OSes. Specifically, after this post you will understand:
- What `bash` is, what it stands for, and where to use it
- How install and run the Terminal for your OS

Prerequisites:
- None; Although it may be helpful to have read through the series [intro][]

</section>



## What is `Bash` and Why Does it Matter

<!-- excerpt-start -->

`Bash` stands for Bourne Again SHell, and it has been the default shell for decades.
However, recently (since around 2019 or so) both MacOS and many Linux distros switched the default shell to `zsh` (or The Z SHell). 
This is basically entirely compatible with <!-- excerpt-end -->`bash` except that it adds some nice quality of life improvements that are beyond the scope of this series, but feel free to explore on your own ([differences bewteen `bash` and `zsh`][shelldiff]).
So unless otherwise stated, all the commands in this series will work for both shells.

<!-- excerpt-end -->

Knowing what OS you are on is super important as the terminal commands change across them. 
Luckily Linux and MacOS share essentially all of the commands because they use the same shell (formerly `bash`, now `zsh`). 
In contrast, Windows uses CMD or Powershell which has a differnt syntax and command list. 
Luckily though, there are two options to get access to `bash` using Windows [see below][windowbash].
I highly reccomand that you use one of these projects to be able to follow along in this series if you are on a Windows machine.

`Bash` is incredibly useful to know because all servers and super computers/computing clusters all run Linux, so having familiarity with this shell via using MacOS/Linux is invaluable, if you want a career involving IT, software engineering, datascience, computer science, etc. Knowing `bash` will help in all of those feilds.
Additionally, most of the time if you get some CLI (command line interface) tutorial or code it will assume bash, so its just a good skill to have even if you are just a general computer tinkerer.



## Choosing Your Terminal

### Mac

There are a few different terminal options for MacOS.
These are ordered from easiest to start up to most difficult, so choose the one, that suits your skill level. I personally, started from the first one and worked my way down the list as I got more comfortable in the terminal.
- You can use spotlight search (Keyboard Shortcut: `⌘` + `Spacebar`) and type terminal to get the default terminal experience. Alternatively, it can be found in the utilities folder inside your applications folder. 
- The default terminal will serve you ok, but I actually recommend you try out [iTerm2][], which you can install with your favorite [package manager][packagemanager] (e.g., `brew install iterm2`) or from their website. iTerm2 adds a lot of nice to have [features][iterm-features] over an above the stock terminal. 
- Finally, if you plan on switching back and forth between Mac and Linux or just want to give Linux a shot, there are a few terminal emulators, that work across both OSes.
Some good examples, include [kitty][] and [alacritty][] (also works on Windows with [WSL][]), of course both can be installed from the [package manager][packagemanager] as well or via their websites.
The reason, it might be useful to use these is they have a configuration file, so once you set it up once, it will work identically across all the OSes. Of course, the downside is since you have to edit a file instead of using a GUI to configure, its a little harder for first timers.
<!-- If you chose one of the two Linux ones, jump down to the [Linux section for customization][linuxtermcustomization], otherwise continue reading.-->

Regardless of which terminal you choose, you should be able to find it in your applications folder or better yet use spotlight search (Keyboard Shortcut: `⌘` + `Spacebar`).

### Linux

There are to many Linux distros for me to cover how to access them for all. Plus if you are using Linux, you probably already know how to access the terminal. But just in case, I will cover some options from a few beginner distros.
For for those using `gnome` your default terminal is, unsurprisingly named `gnome-terminal`.
And for `KDE-Plasma` users you have the `konsole`.
You can acces both just my searching for them in your applications or icon their icons.
Of course, many people elect to download one with a little more features, such as [alacritty][] and [kitty][]. 
Linux was built specifically with the terminal in mind, so you really cannot go wrong.
I would reccomend, you try a few out and see what suits your tastes/preferences.


### Windows

Windows also has a couple options depending on your skill/experience level.
I ***HIGHLY*** reccomand that you use one of these projects to be able to follow along in this series.

For morst beginners, I reccomend [gitbash][], which is designed to give you access to the unix commands and meant to help with git specifically.
The other option is [Windows Subsystem for Linux (WSL)][wsl], which is built by microsoft to allow you to directly use Linux from within your Windows machine. With [WSL][wsl], you have access to a full Linux distro. One neat feature is you can have access to the [alacritty][] terminal on Windows, so you could use it for all three OSes if you switch between them.
If this is your first time trying this out, I recommend [gitbash][], but if you plan on doing a lot of coding in `bash` or you just want to see what all the Linux fuss is about, go for [Windows Subsystem for Linux (WSL)][wsl].


## Final Thoughts

If you are feeling overwhelmed in the number of chooses I layed out here, don't worry, just pick the first on on the list for your OS.
You can always change in the future, so you can't make a mistake.
Also before you move forward I do recommend you option the preferences for your terminal, head to the profiles and change you colors or at least the color theme. 
Having a good looking terminal WILL ACTUALLY MAKE YOU A BETTER CODER.
Because having a good looking terminal will make you more likely to code, and that extra practice and motivation can make a world of difference.


[wsl]: https://learn.microsoft.com/en-us/windows/wsl/install "Windows Subsystem for Linux"
[shelldiff]: https://linuxhint.com/differences_between_bash_zsh/ "Differences between Bash and ZSH"
[munix]: https://github.com/ibraheemdev/modern-unix "Modern Unix"
[gitbash]: https://gitforwindows.org/ "Git for Windows"
[iTerm2]: https://iterm2.com/ "iTerm2: Terminal Emulator for MacOS"
[iterm-features]: https://iterm2.com/documentation-highlights.html "iTerm2 Differences"
[ohmyzsh]: https://ohmyz.sh/ "Oh My Zsh: Prettify you Terminal"
[bash-structure]: #the-form-of-commands "The Structure of a Bash Command"
[kitty]: https://sw.kovidgoyal.net/kitty/ "Kitter Terminal Emulator"
[alacritty]: https://alacritty.org/ "Alacritty Terminal Emulator"
[wezterm]: https://wezfurlong.org/wezterm/ "Wezterm Terminal Emulator"
[windowbash]: #windows

[intro]: {% link _posts/series/cli/2022-10-03-cli.md %}


[packagemanager]: /future-links

