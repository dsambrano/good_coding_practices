---
layout: post
title:  "Final Thoughts: Discover New Commands and Inspiration for More"
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


## Building your Knowledge


<!-- excerpt-start -->

After you have gone through the last section its time to remove the training wheels.
To learn to code, you need

1. to try to implement the skills that you have learned and
2. the space to come up with creative solutions to your problems.

So my goal, here, is to motivate you by showing you fun useful ideas/commands to spark your creativity to inspire you to create something.
I just want to scaffold you just enough so that you can figure things out on your own and solve problems that are important/useful to you.
The best way to learn is for you to come up with creative ways to combine the commands I showed you and others that I did not, to solve problems that are unique to you.
So going into explicit details on all the commands would only slow you down because I would inevitably end up teaching you a lot of commands that are not useful for your problems.
To that end, I am intentionally not going to list through all the commands and explain them in great detail like I did before because that is just not a good way to learn how to code.
Instead, throughout this post I will:
<!-- excerpt-end -->
- Show you how to view and edit files
- Show you the general structure of shell commands
- Show you how to find and learn about new commands
- List off a bunch of commands that are generally good to know (without much details so you can pick and choose which are worth you exploring further)
- Finally end off with some examples to inspire you to create your own projects



### Additional Commands

These are some more commands that are either super useful or are just really neat!
All commands that are not installed by default will have a link to download, but of course they can also be downloaded from your favorite [package manager][packagemanager].
They default to the homebrew package manager if a general download link is not available, so feel free to swtich to your preferred one.

- `curl` and `wget` both are used to access websites from the command line
- [`brew`][brew] is a [package manager][packagemanager] for MacOS that allows you to download pretty much any app from your terminal
- `diff` finds the differences between two files
- `git` allows you to version control your software projects
- `alias` shorts long command by making your own alternative command name
- `grep` find every file and the specific line number that [`"SOME RANDOM TEXT"`] appears
- `sed` can be used to replace text in a file. Really helpful in combination with `grep`
- `cal` and `date` give you a calendar and the date, respectively
- `wc` gets the word count of a file (note, I dont think this works on .docx files)
- `which` shows you where a command lives on your system
- `ip` and `ifconfig` to get your ip address
- [`netcat`][netcat] for all things networking
- `ufw` setting up a firewall
- `ssh` allows you to access another computer
- `sudo` allows you run as super user, essentailly having complete access. You will learn more about this command later
- [`cmatrix`][matrix] to look like you a hacker in the matrix
- `top`, [`htop`][htop], [`btop`][btop], [`gtop`][gtop] etc. are all different programs to monitor your system
- [`neofetch`][neofetch] just looks super kool
- [`telnet towel.blinkenlights.nl`][telnet] watch an ascii based replication of star wars (no sound, but still super fun)
- [`ani-cli`][anicli] and [`anime-terminal`][anime-terminal] allow you to stream or download full fledge anime from the terminal and even save your watch history


## Inspiration

Of course we only touched the surface here, I only really showed you commands that allow you to navigate your file systems, but there are loads other commands as well. For example, there are command to access content from the internet `curl` commands that lets you access other computers `ssh` and `vlc`. My goal here was not have a complete bash tutorial, but rather to get you to a position where you can be dangers and importantly, hopefully show you just enough to spark your ideas on how valuable this is. The next step is for you to apply this knowledge. Make some small app that automates away boring things you have to do all the time. You might not now all the commands necessary to complete the task, but that is ok, you can google a command or better yet, try to search for it with `apropos`.

Some examples my RAs have done in the past include:

If you are looking for a place to spruce up your terminal, you can check out the modern unix project, where they attempt to update all the old commands to fit the modern age, so they will have lots more colors and

## Further Exploration

As you can imagine, this is just a taste of the command line. You can do so so much more. Hopefully this was just enough to wet your appetite, and make you eager to explore more. One great place to start is with [Modern Unix][munix]. This is a project that has upgrades many of the commands we just talked about to fit with the modern world, (e.g., adding colors, speed, etc.). Another way to speed things up is to make alias which you can write short hand for really long commands.

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

<!--packages-->
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

<!--Internal Links-->
[bash]: {{site.data.links["bash"]["file-navigation"]}}
[packagemanager]: {{site.data.links["general"]["package-managers"]}}
[list]: #creatingdeleting-folders-and-files
