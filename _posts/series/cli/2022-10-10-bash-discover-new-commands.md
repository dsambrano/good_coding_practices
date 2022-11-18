---
layout: post
title:  "Final Thoughts: Last Minute Bash Tips"
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

In this blog you will learn basic bash commands. By the end of this you will know:

- Basic commands to traverse your computer from the terminal
- The structure or commands, arguments, and options in `bash`
- How to edit, create, move and delete files
- Create a script to make a folder structure for each new project you are working on.

Prerequisites:

- Have read through the previous post on [bash][] or have a general understanding of how to move around in bash

</section>


## How to Learn New Commands

By this point, you should have a solid foundation for the command line.
You can move around (`cd`), look around (`ls`), check where you are (`pwd`), and now make/change things (`mkdir`, `touch`, `echo`, `nano`).
All you need now is to find some more commands that would be helpful for you.
So, I am going to show you some extra commands that specifically help you find other commands and learn how they work.

These commands are more important to remember because they let you find a command to perform an action as well as learn how to use that command:

### `apropos`

> ***If you only remember one command this is the one to remember***

`apropos`: à propos (meaning with regard to). This command allows you to search for all commands the perform function/have anything in their name/description about a topic. It takes one argument which is the description that you wish to use to search. Example: `apropos calendar` will show you every command that has calendar in the title or description.
The one caveat with `apropos` is that it only searches functions you have installed on your computer, so if you don't find what you are looking for be sure to do a search online.

![Apropos example](/assets/imgs/apropos.png)


### `man`

`man`: (Pull up the) Manual (for the respective command so you can learn all the options available). This takes a single argument, which is the command you want to pull up the man pages for (similar to `help()` or `??` in most languages). Example: `man ls` show you a description of the `ls` command and all the options available.

![Man Example](/assets/imgs/man.png)

Pressing the space bar you can go through the man pages.
Need to describe `q` for quit (super common), so if you are ever stuck first try this, then later you will learn about `CTRL` + `C` to cancel the active program.

### `tldr` and [cheat.sh][cheatsheet]

`tldr`: Sometimes when you are first learning to code, the `man` pages are a bit overwhelming because that have more technical language and generally more info than you need. That is where `tldr` comes in. This is a series of **T**oo **L**ong; **D**idn't **R**ead snippets to replace the lengthy manpages. This is not available by default, but as per usual, you can install these with your favorite [package manager][packagemanager]. Example: `tldr ls`:

![tldr example](/assets/imgs/tldr.png)

Finally, very similar to `tldr` there is the [cheat.sh][cheatsheet] website, which can gives you very easy to read/understand examples for the command.
Simply go to `cheat.sh/COMMAND`, where you replace `COMMAND` with the command you wish to learn more about, e.g., [`cheat.sh/ls`][cheatsheetls].
I would suggest trying both out to see which one you prefer because they explain things a bit differently, so one may work better for you than the other.
> **Note**: Since [cheat.sh][cheatsheet] is a website, you can also access it from the command line with `curl cheat.sh/ls`.
Try it out!

Of course if you are still struggling either with understanding the command or finding a command to do a particular thing, do a quick search online or phone a friend!

## Recap

You learned a lot in the post, so 

Currently not only recap, so decide to either remove or state that they are there so make clear (might need to change name from recap).

### Learning About New Commands

- `apropos QUERY`: with regard to. Search for commands the involve some [`QUERY`].
- `man COMMAND`: show the Manual for `COMMAND`.
- `tldr COMMAND`: show a simplified man page with examples for a `COMMAND`.

## Extra Practice



[wsl]: https://learn.microsoft.com/en-us/windows/wsl/install "Windows Subsystem for Linux"
[shelldiff]: https://linuxhint.com/differences_between_bash_zsh/ "Differences between Bash and ZSH"
[munix]: https://github.com/ibraheemdev/modern-unix "Modern Unix"
[gitbash]: https://gitforwindows.org/ "Git for Windows"
[iTerm2]: https://iterm2.com/ "iTerm2: Terminal Emulator for MacOS"
[ohmyzsh]: https://ohmyz.sh/ "Oh My Zsh: Prettify you Terminal"
[bash-structure]: #the-form-of-commands "The Structure of a Bash Command"
[intro]: /future-links
[prime]: https://www.youtube.com/c/ThePrimeagen "The Primeagen YT"
[prime-vim]: https://youtu.be/H3o4l4GVLW0 "Primeagen Vim Playlist"

[bash]: {% post_url /series/cli/2022-10-10-bash %}
[packagemanager]: /future-links
[list]: creatingdeleting-folder-and-files


[brew]: https://brew.sh/ "Homebrew"
[matrix]: https://github.com/abishekvashok/cmatrix "C the Matrix"
[htop]: https://github.com/htop-dev/htop#prerequisite "Htop sys monitoring"
[btop]: https://github.com/aristocratos/btop#installation "BTop sys monitoring"
[gtop]: https://github.com/aristocratos/btop#installation "Gtop Sys monitoring"
[neofetch]: https://github.com/dylanaraps/neofetch/wiki/Installation "Neofetch to look kool"
[telnet]: https://formulae.brew.sh/formula/telnet#default "Telnet"
[netcat]: https://formulae.brew.sh/formula/netcat#default "Netcat"
[anicli]: https://github.com/pystardust/ani-cli#install "Ani-Cli"
[anime-terminal]: https://github.com/whoisYoges/anime-terminal#anime-terminal "Anime-Terminal fork of Ani-Cli"
[cheatsheet]: https://cheat.sh/ "Cheat Sheet website"
[cheatsheetls]: https://cheat.sh/ls "Cheat Sheet website"
[modern-unix]: https://github.com/ibraheemdev/modern-unix "Modern Unix"
