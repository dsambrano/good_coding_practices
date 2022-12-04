---
layout: post
title:  "Final Thoughts: Discover New Commands and Inspiration for More"
date: 2022-10-03
author: Deshawn Sambrano
tags: Coding Unix Bash Shell
time: 12
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

- Have read through the previous posts in [this series][bash-series] or have a general understanding of how to move around in `bash`.

</section>


## How to Learn New Commands

By this point, you have gained a solid foundation for the command line.
You can move around (`cd`), look around (`ls`), check where you are (`pwd`), and now make/change things (`mkdir`, `touch`, `echo`, `nano`, `cp`, `mv`, `rm`).
All you need now is to find some more commands that would be helpful **FOR YOU**.
So, I am going to show you some extra commands that specifically help you find other commands and learn how they work.

These commands are more important to remember because they let you find a command to perform an action as well as learn how to use that command:

### `apropos`

> ***If you only remember one command this is the one to remember***

`apropos`: à propos (meaning with regard to).
This command allows you to search for all commands that perform function/have anything in their name/description about a topic.
It takes one argument which is the query that you wish to search.
Example: `apropos calendar` will show you every command that has calendar in the title or description.

![Apropos example](/assets/imgs/apropos.png)

The one caveat with `apropos` is that it only searches functions you have installed on your computer.
Its not to bad since there are a ton of commands included by default, but if you don't find what you are looking for be sure to do a search online.

### `man`

`man`: Pull up the **MAN**ual for the respective command so you can learn all the options available.
This takes a single argument, which is the command you want to pull up the man pages for (similar to `help()` or `??` in most languages).
Example: `man ls` shows you a description of the `ls` command and all the options available.

![Man Example](/assets/imgs/man.png)

By pressing the space bar, you can move through the man pages (just like `more` and `less`).
Once, you are done just press `q` to quit.
This is pretty standard, so if you are ever stuck in the terminal, first try `q`, if not, then you can try `CTRL` + `C` to cancel the active program.

### `tldr` and [cheat.sh][cheatsheet]

`tldr`: Sometimes when you are first learning to code, the `man` pages are a bit overwhelming because they use more technical jargon and generally more info than you need.
That is where `tldr` comes in.
This is a series of **T**oo **L**ong; **D**idn't **R**ead snippets to replace the lengthy manpages.
This is not available by default, but as per usual, you can install these with your favorite [package manager][packagemanager].
Example: `tldr ls`:

![tldr example](/assets/imgs/tldr.png)

Finally, very similar to `tldr` there is the [cheat.sh][cheatsheet] website, which can provides very easy to read/understand examples for the command.
Simply go to `cheat.sh/COMMAND`, where you replace `COMMAND` with the command you wish to learn more about, e.g., [`cheat.sh/ls`][cheatsheetls].
I would suggest trying both out to see which one you prefer because they explain things a bit differently, so one may work better for you than the other.
> **Note**: Since [cheat.sh][cheatsheet] is a website, you can also access it from the terminal with `curl cheat.sh/ls`.
Try it out!

Of course if you are still struggling either with understanding the command or finding a command to do a particular thing, do a quick search online or phone a friend!


## Building your Knowledge


<!-- excerpt-start -->

After you have gone through the rest of the series, its time to remove the training wheels.
To learn to code, you need

1. to try to implement the skills that you have learned and
2. the space to come up with creative solutions to **YOUR** problems.

So my goal, here, is to motivate you by showing you fun useful ideas/commands to spark your creativity to inspire you to create something.
I just want to scaffold you just enough so that you can figure things out on your own and solve problems that are important/useful to you.
The best way to learn is for you to come up with creative ways to combine the commands I showed you, and others that I did not, to solve problems that are unique to you.
So going into explicit details on all the commands would only slow you down because I would inevitably end up teaching you a lot of commands that are not useful for your problems.
To that end, I am intentionally not going to list through all the commands and explain them in great detail like I did before because that is just not a good way to learn how to code.
Instead, throughout the final section of this series I will:
<!-- excerpt-end -->
- List off a bunch of commands that are generally good to know (without much details so you can pick and choose which are worth you exploring further)
- End off with some examples to inspire you to create your own projects



### Additional Commands

These are some more commands that are either super useful or are just really neat!
All commands that are not installed by default will have a link to download, but of course they can also be downloaded from your favorite [package manager][packagemanager].
They default to the homebrew package manager if a general download link is not available, so feel free to swtich to your preferred one.

- `curl` and `wget` both are used to access websites from the command line can also be used to download files or images
- [`brew`][brew] is a [package manager][packagemanager] for MacOS (and Linux) that allows you to download pretty much any app from your terminal
- `diff` finds the differences between two files
- `git` allows you to version control your software projects
- `alias` shorts long command by making your own alternative command name
- `grep` find every file and the specific line number that [`"SOME RANDOM TEXT"`] appears either in a specific file or all files containing the text in a directory.
- `sed` can be used to replace text in a file. Really helpful in combination with `grep`
- `cal` and `date` give you a calendar and the date, respectively
- `wc` gets the word count of a file (note, I dont think this works on .docx files)
- `which` shows you where a command lives on your system
- `crobtab` allows you to schedule tasks to repeat as often as you want or to schedule to happen in the future
- `ip` and `ifconfig` to get your ip address
- [`netcat`][netcat] for all things networking
- `ufw` setting up a firewall
- `ssh` allows you to access another computer from the terminal
- `sudo` allows you run as super user, essentailly having complete access
- [`cmatrix`][matrix] to look like you a hacker in the matrix
- `top`, [`htop`][htop], [`btop`][btop], [`gtop`][gtop] etc. are all different programs to monitor your system
- [`neofetch`][neofetch] adds some nice aesthetics and just looks super cool
- [`telnet towel.blinkenlights.nl`][telnet] watch an ascii based replication of star wars (no sound, but still super fun)
- [`ani-cli`][anicli] and [`anime-terminal`][anime-terminal] allow you to stream or download full fledge anime from the terminal and even save your watch history


### Inspiration

As I have said many times now, the only way to improve at coding is by trying things out yourself.
But often as a beginner, it can feel a bit overwhelming of what you can even attempt to do.
Perhaps one of the most common pitfalls I see for new people is feeling like they need to know a little bit more to get started.
As a result, they end up watching or reading "just one more tutorial".
The problem is you will never feel like you know enough.
The only way to learn to code is by actually trying to build something.

Of course, this is likely your first project, so try something relatively simple.
Make some small app that automates away boring things you have to do all the time.
You might not know all the commands necessary to complete the task, but that is ok, you can search online for commands that do X, or better yet, try to search for it with `apropos` and use either [cheat.sh][cheatsheet], [tldr][tldr], or `man` to figure out how to use it.
To give you some inspiration, here are a few examples, either that my RA's and/or I did when starting out with `bash`.

- Create a Template Folder Structure to make all your projects organized
- Create a script to automate running a experiment or project by double clicking a button
- Create a script to automate updating a GitHub Repository
- Use a script and crontab to automatically change your desktop background every day

<!--[Take Your Bash Skills to the Next Level][bash-intermediate]-->
Some of these might require you to learn some new skills like [how to make a script in `bash`][bash-script], that's ok, the difference is, you should not feel like you need to got through multiple long drown out all-incompassing, tutorials.
They are going to show you things that matter if you are going to have a career in programmer for `bash`, but if you are doing this as a hobby or just to improve your workflow you will waste a lot of your time learning things that are not necessary.
Try to acheive, last minute learning, where you learn the skills as the job/project requires it, but not before.
So, if your project requires you to make a script check out this post, but if not then there is no worries.

Finally, one last piece of advice when you start out, you want to take whatever app you are trying to create and break it up into as small of parts as you can.
This will help prevent feeling overwhelmed.
Its much easier to tackle a small task compared to a whole project.


## Series Recap

<!--Of course we only touched the surface here, I only really showed you commands that allow you to navigate your file systems, but there are loads other commands as well.-->
<!--For example, there are command to access content from the internet `curl` commands that lets you access other computers `ssh` and `vlc`.-->
My goal for this series was not have a complete bash tutorial, but rather to get you to a position where you can be dangerous and importantly, show you just enough to spark your ideas on how valuable `bash`/clis/the terminal are, so you are inspired to seek out more on your own.
To that end, you learned a lot in this series!
You can move around; create, delete and move files and folders; edit files; and find and learn how to use new commands.
You now know all the basics for using the terminal, and these skills are super valuable.
Now you have the skills to use a Super Computer/Cloud Server and are ready to use the terminal for other languages like python, C/C++, etc.

As you can imagine, this is just a taste of the command line. You can do so, so much more.
Hopefully this was just enough to wet your appetite, and make you eager to explore more.
One great place to start is with [Modern Unix][munix].
This is a project to help upgrade many of the commands we just talked about to fit with the modern world (e.g., adding colors, speed, etc.).
<!--Another way to speed things up is to make alias which you can write short hand for really long commands.-->

Additionally, as I have mentioned before, having an aesthetically pleasing terminal is incredible valuable for you as a programmer.
Having a good looking coding environment will make you more likely to use it, which in turn makes you practice more.
That additional practice leads to you becoming a better programmer.
I have a dedicated bonus post to this series all focusing on [customizing your terminal][custom-terminal].

Finally, if you are itching to learn more about `bash` and how to create more complicated project check out my intermediate level `bash` series "[Take Your Bash Skills to the Next Level][bash-intermediate]", which is designed for intermediate bash users to learn how to make scripts, control the flow of appps, manage their path, create aliases, edit your `PATH`, and much more.



<!--REFERENCES-->
[wsl]: https://learn.microsoft.com/en-us/windows/wsl/install "Windows Subsystem for Linux"
[shelldiff]: https://linuxhint.com/differences_between_bash_zsh/ "Differences between Bash and ZSH"
[munix]: https://github.com/ibraheemdev/modern-unix "Modern Unix"
[gitbash]: https://gitforwindows.org/ "Git for Windows"
[iTerm2]: https://iterm2.com/ "iTerm2: Terminal Emulator for MacOS"
[ohmyzsh]: https://ohmyz.sh/ "Oh My Zsh: Prettify you Terminal"
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
[tldr]: https://github.com/tldr-pages/tldr# "TLDR"

<!--Internal Links-->
[bash]: {{site.data.links["bash"]["file-navigation"]}}
[packagemanager]: {{site.data.links["general"]["package-managers"]}}
[list]: #creatingdeleting-folders-and-files
[bash-intermediate]: {{site.data.links["series"]["bash-scripting"]}}
[custom-terminal]: {{site.data.links["bash"]["terminal-custom"]}}
[bash-series]: {{site.data.links["series"]["bash-basics"]}}

[bash-structure]: #the-form-of-commands "The Structure of a Bash Command"
[intro]: /future-links
[bash-script]: {{site.data.links["bash"]["bash-scripts"]}}
