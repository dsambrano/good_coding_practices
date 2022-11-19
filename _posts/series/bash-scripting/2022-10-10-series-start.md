---
layout: post
title:  "Take your bash Skills to the Next Level"
date: 2022-10-03
author: Deshawn Sambrano
tags: Coding Unix Bash Shell
time: 10
draft: true
usemathjax: true
category: bash-scripting
series: bash-scripting
diff: intermediate

---

{% include sidebar.html %}

<section class="series takeaways">

In this blog you will learn basic bash commands. By the end of this you will know:

- Basic commands to traverse your computer from the terminal
- The structure or commands, arguments, and options in `bash`
- How to edit, create, move and delete files
- Create a script to make a folder structure for each new project you are working on.

Prerequisites:

- Have read through the previous post on [bash][] or have a general understanding of how to move around in bash

</section>

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


## Editing Files

I left off the last post by hinting at some really neat commands that were centered around creating files and directories.
To quickly recap, the `mkdir` command **M**a**K**es a **DIR**ectory, you can even append the `-p` (for parent) option to make multiple nested directories.
The `touch` command creates an empty file.
With `echo` you can make a file that contains text with `echo "SOME TEXT" > file_name`, note the `>`.
If you have a single `>` it will delete all the contents are replace it wil the text, if you include two `>>`, then you will simply append the text to the file.
To remember the arrow direction, I think of it like funneling a lot of text into a file, so from big to little.

Now that you know how to make a file, lets learn how to edit a file from the terminal.
There are a lot of options to edit files `vi`, `vim`, `nvim` (my preferred option), `emacs`, and `nano`.
Nano is by far and away the easiest place to start for beginners, so I will cover a few things with it.

Again, like the rest of this post, this is just a taste of how to edit file from the terminal, and with these skills you will be able to make some changes, but will not be super efficient.
For that, you will have to do some extra learning on your own.
I personally use neovim, which notably has a steep learning curve, but is *blazingly fast*.
So fast, I even replace my normal IDE (Visual Studio Code for it).
If you are interested, I would recommend you check out [The Primeagen][prime].
He is a software developer for Netflex that has some amazing videos on [vim/neovim][prime-vim].

Ok, with that out of the way lets edit some files!
First, to get some more practice make a new folder in your Documents folder (or you Desktop if you prefer to see it) and inside that use one of the two methods above to make a file.
You can of course make a file with the `nano`, but this is just good practice.

To open up the file to edit, type `nano` and then the `PATH_TO_THE_FILE` you wish to edit.
Keep in mind it will depend on your current working directory, so if your current directory is `/users/Deshawn` and your file is in `~/Documents/first_folder/my-text.txt` then you will need to type `nano ~/Documents/first_folder/my-text.txt`, but if you already `cd`'d into the `first_folder` directory, then you can simply type `nano my-text.txt`.

When you first open nano it should look something liket this:

![Nano](/assets/imgs/nano.png)


At the top center, you can see the current files name.
At the bottom, you see a list of keyboard shortcuts, and just above that you see how many lines were read in (0 in my case because it was an empty file).

From there, you are free to type as you go, `nano` does not allow for mouse movement, though so you need to use the arrow keys to get around (which is partially why its much slower that other editors).
> For vi/vim/nvim you move around with the keyboard but in a much faster way, because you use the whole keyboard, but it means you need to tell it when you want to insert text vs move around really fast. This plus needing a command to save and close a file, people tend to get stuck in these 😂. But again, after that steep learning curve it is really nice, for those who like a challange.


To close a file, you want to do two things, first you need to save the changes, and then close the file.
Take a look at the bottom command shortcuts if you ever get confused.
First you need to save the file, in a lot of older editors they use the term writing the file.
So in this case, to save, you just hit `^` + `O`, where the `^` means the Control key on your keyboard, usually the far left corner.
And the `O` is the letter not the number (you don't need the shift key even though it displays in as a capital letter).
Once you hit that key combo, you will be prompted to save with the same name (just hit enter) or a new name (type out the changed name):
You typically just hit enter here, unless you have reason not too.

<!--
Once you hit that key combo, you will be prompted to save the file and overwrite the previous contents `y` for yes and `n` for no:
![Nano Saving](/assets/imgs/nano-save.png)
-->


![Nano Changing Name](/assets/imgs/nano-name.png)


Finally, you can exit `nano` as shown in the bottom that is with `^` + `X`, which again is the Control key and the letter.

Congratulations! You just edited your first file straight from the terminal. You can check out the contents of the file with the `cat` command, include the filename as the argument.

<!--
## Building your Knowledge

I need to at least have them make a document and probably a folder, perhaps give them the sense of jubulation from when you see a folder get created on your desktop.

I just want to end you with a little spark. This was the moment I got hooked. When I was able to make something on my computer without clicking a button.
My mind was astounded.
-->

## Learn New Commands

By this point, you should have a solid foundation for the command line.
You can move around (`cd`), look around (`ls`), check where you are (`pwd`), and now make/change things (`mkdir`, `touch`, `echo`, `nano`).
All you need now is to find some more commands that would be helpful for you.
So, I am going to show you some extra commands that specifically help you find other commands and learn how they work.


These commands are more important to remember because they let you find a command to do perform and action as well as learn how to use that command:


> ***If you only remember one command this is the one to remember***

`apropos`: à propos (meaning with regard to). This command allows you to search for all commands the perform function/have anything in their name/description about a topic. It takes one argument which is the description that you wish to use to search. Example: `apropos day` will show you every command that has day in the title or description

`man`: (Pull up the) Manual (for the respective command so you can learn all the options available). This takes a single argument, which is the command you want to pull up the man pages for (similar to `help()` or `??` in most languages). Example: `man ls` show you a description of the `ls` command and all the options available.

`tldr`: Sometimes when you are first learning to code, the `man` pages are a bit overwhelming because that have more technical language and generally more info than you need. That is where `tldr` comes in. This is a series of **T**oo **L**ong; **D**idn't **R**ead snippets to replace the lengthy manpages. This is not available by default, but as per usual, you can install these with your favorite [package manager][packagemanager]. Example: `tldr ls`:

Of course if you are still struggling either with understanding the command or finding a command to do a particular thing, do a quick search online or phone a friend!

## The form of Commands

By this point, you probably have a good intuitive sense of the structure of commands, so feel free to skip to the [list][], but I figure it was a good idea, to have a single place describing the full structure of `bash` commands.

A command is just a mini program that executes when you call it from  a terminal.
Every command has 3 basic (potential) parts.
The command itself, any options you can apply, and finally any arguments.

As you saw in the previous section with the `cd` command, we had an argument (the new directory to change to).
Again the argument is separated only by a space (no parentheses as you may be used to from other programming languages) and any additional arugments are also separated by a space.
Meaning, if you have an argument that includes a space you either need to surround it in quotes or use the escape character `\` (e.g., `ls my\ folder\ with\ spaces`).
<!-- Occasionally, you will find some commands that use named arguments in which case the argument requires you use the option syntax in front of the argumnet. -->
Options in `bash` start with a `-`.
For the `ls` command we learned about the `-a` option again separated by a space.
It is common practice for single letter options to have a single `-` and full word arguments have two `--`.

Now that you know how commands are structure the next couple sections will list a bunch of useful basic commands before we end by showing you a way to learn the ins and outs of a command (like its options) and how to find a comand to perform a task you suspect exists.

### Creating/Deleting Folders and Files

Before continuing, try each of the following commands out, just to you know how they work.

For all the commands the relevant arguments will be in `[]`

- `mkdir`: Make Directory (folder) [`name_of_folder_to_make`; use the `-p` (for make parent directories) if you want to make multiple nested folders simultaneously]
- `touch`: Make an Empty File [`name_of_file_to_make`]
- `cp`: Copy [`name_of_file_to_copy`; `name_of_location_to_copy_to`]
- `mv`: Move [`name_of_file_to_move`; `name_of_location_to_move_to`; can also be used to change a files name if you move it to the same location with a new name]
- `rm`: Remove a file [`name_of_file_to_remove`]

### Viewing Contents and Editing Files

- `nano`: A simple to use text editor. You will likely hear about other editors like `vim` or `emacs`. Both are really good, but they have a really hard learning curve, so I don't reccomend them when you start out. I personally use `nvim`, which is a modern replacement for `vim`. [`name_of_file_to_edit`]
- `cat`: Concatenate (prints out files contents) [`name_of_file_to_print`]
- `less`: Less (is more... powerful). Useful for printing out really long docs becuse you can scroll through them [`name_of_file_to_print`]
- `more`: More (of the content on screen) Useful for printing out really long docs but not as good as `less` [`name_of_file_to_print`]

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
- `wc` gets the word count of a file (note, I dont think this works on .docpx files)
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

## Homework

Try to make a new folder called `git_repos` somewhere on your computer and either move or copy a file into.
Then make `README.md` file (for advanced users try `nano` or `vim` to edit it and say something).

Finally, make a file that can setup a folder structure for all new projects (we didnt discuss how to make workable scripts, but thats ok you can just copy and paste for now).
Inside the newly created folder you should you should have a the following structure:

```shell
my_first_bash_script/
  |-- analyses/
      |-- plots/
  |-- expriment/
      |-- data/
  |-- lit_review/
  |-- supporting_docs/
      |-- scales/
      |-- irb_docs/
  |-- DEVELOPEMENT_DECISIONS.md
  |-- README.md
```

Feel free to mess around with this structure a bit to suit your own needs, but having some basic structure for all projects is very important.
I highly highly reccommend two separate `.md` files.
The `README` is for anyone first coming to the project on how/why to run this code and what is found were (this can be updated at the very end of the project when it is read to be published).
In contrast the `DEVELOPMENT` file is a place where you should write down every decision you made for the project.
Why did you use this library instead of that on, why did you have 60 trials instead of 90, why did you exclude a subject etc.
I personally also leave a ton of links to stack[exchange/overflow] for how I came up with code or to justify certain things to myself.
This file can also be private and not actually published anywhere if you prefer, but trust me, especially when writing a methods sections this is invaluable.


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
