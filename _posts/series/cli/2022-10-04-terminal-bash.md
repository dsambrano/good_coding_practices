---
layout: post
title:  "What is Bash and How do I Open the Terminal?"
date: 2022-10-03
author: Deshawn Sambrano
tags: Coding Unix Bash Shell
time: 5
draft: true
usemathjax: true
category: cli
series: cli
diff: beginner
---

{% include sidebar.html %}

<section class="takeaways">

In this series you will learn basics of using the terminal with `bash`. By the end of this you will know:
- Basic commands to traverse your computer from the terminal and how to customize your terminal
- The structure of commands, arguments, and options in `bash`
- Creating a script automate boring tasks
- What Environment Variables, your Path, and a `bashrc` file do

Prerequisites:
- None; This Series will assume no prior expeience, but by the end you will cover some more intermediate to advanced topics

</section>


## What is `Bash` and Why Does it Matter

<!-- excerpt-start -->

<!-- `Bash` is a shell, or the language used on your terminal.
In other words, `bash` is the way you interact with your computer through the terminal without the need for a GUI. -->
`Bash` stands for **B**ourne **A**gain **SH**ell, and it has been the default shell for decades.
However, recently (since around 2019 or so) both MacOS and many Linux distros switched the default shell to `zsh` (or The Z SHell).
This is basically entirely compatible with <!-- excerpt-end -->`bash` except that it adds some nice quality of life improvements that are beyond the scope of this series, but feel free to explore the [differences bewteen `bash` and `zsh`][shelldiff] on your own.
So unless otherwise stated, all the commands in this series will work for both shells.

<!-- excerpt-end -->

`Bash` is incredibly useful to know because all servers and super computers/computing clusters all run Linux, so having familiarity with this shell via using MacOS/Linux is invaluable if you want a career involving IT, software engineering, datascience, computer science, etc.
Knowing `bash` will help in all of those feilds.
Additionally, most of the time if you get some CLI (command line interface) tutorial or code it will assume bash, so its just a good skill to have even if you are just a general computer tinkerer.


Knowing what OS you are on is super important as the terminal commands change across them.
Luckily Linux and MacOS share *essentially* all commands because they use the same shell (formerly `bash`, now `zsh`).
In contrast, Windows uses CMD or Powershell which has a differnt syntax and command list.
Luckily though, there are two options to get access to `bash` using Windows [see below][windowbash].
I highly reccomand that you use one of these projects to be able to follow along in this series if you are on a Windows machine.
Jump to the appropriate section to open your terminal, before moving to the next post.


### Linux

Let's be honest, you know how this works.


### Mac

If this is your first time, I recommend you use the default apple terminal. You can use spotlight search (Keyboard Shortcut: `⌘` + `Spacebar`) and type terminal to get the default terminal experience. Alternatively, it can be found in the utilities folder inside your applications folder.

Once opened, I highly recommend, you open up the preferences with `⌘` + `,` and adjust your colors in the profile tab.
Once you picked a theme and/or adjusted the colors make sure you save them by clicking the default button at the bottom left.
You may have to quit and reopen the app for them to take effect permanantly.

This might sound silly, but changing your colors can make huge difference.
Having a good looking terminal WILL ACTUALLY MAKE YOU A BETTER CODER.
The more pleasing you find you terminal the more you will want to use it, and therefore, the more practice you will get.
That extra practice and motivation can make a world of difference.
There is a bonus post at the end of the series specifically covering [customizing your terminal][terminal-customization].


### Windows

I ***HIGHLY*** reccomand that you use one of these projects to be able to follow along in this series, as I will not discuss `Powershell` at all.
Since its not available by default you will need to download some software.
If you are a beginner, I would reccomend [gitbash][], which is designed to give you access to the unix commands and meant to help with git specifically.
More advanced user may try the [Windows Subsystem for Linux (WSL)][wsl], which is built by microsoft to allow you to directly use Linux from within your Windows machine.


## Prepare for Adventure

Now that you know what CLIs are and how to open the terminal on your OS, you are ready to explore the world of `bash`.
In the next section, you will learn how to move around your computer with `bash` as well as how to make files and folders straight from the terminal.

<!-- So, let's imagine you had 10 word documents that you wanted to convert to PDFs.
To do this via a GUI you would need to open each up, go to the file tab, click save as, then change the format, then click PDF, then change the name if applicable -->

<!--REFERENCES-->
[wsl]: https://learn.microsoft.com/en-us/windows/wsl/install "Windows Subsystem for Linux"
[shelldiff]: https://linuxhint.com/differences_between_bash_zsh/ "Differences between Bash and ZSH"
[munix]: https://github.com/ibraheemdev/modern-unix "Modern Unix"
[gitbash]: https://gitforwindows.org/ "Git for Windows"
[iTerm2]: https://iterm2.com/ "iTerm2: Terminal Emulator for MacOS"
[ohmyzsh]: https://ohmyz.sh/ "Oh My Zsh: Prettify you Terminal"
[anime-terminal]: https://github.com/whoisYoges/anime-terminal "CLI: Anime from your Terminal"

[bash-structure]: #the-form-of-commands "The Structure of a Bash Command"
[windowbash]: #windows
[ahead]: #prepare-for-adventure
[terminal-customization]: {{site.data.links["bash"]["terminal-custom"]}}
