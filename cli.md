## Apperance is Important

Change your Default Terminal Colors **NOW**! 

> The happier you are when you look at your terminal the happiers you will be when coding. More Happy means more coding. More Coding means more practice. More practice means Great Coder!

This same principle applies for all text editors/IDEs (integrated developer environment) by the way. 


## Know your OS

Knowing what OS you are on is super important as the commands change across them. 
Luckily Linux and MacOS share most of the commands because they use the same shell (you have probably heard of BASH before). 
This is especially useful to know, because all servers and super computers/computing clusters all run Linux, so having familiarity with the shell via using MacOS is very valuable. 
In contrast Windows uses CMD or Powershell which has a differtn syntax and command list. 
Luckily for you, there is a project to give Windows BASH commands called [gitbash](https://gitforwindows.org/) and I highly reccomand you use that to be able to follow along. 
Most of the time if you get some CLI (command line interface) code it will assume bash so its just a good skill to have. 

Speaking of BASH it stands for Bourne Again SHell. 
However, recently (since around 2019 or so) both MacOS and many Linux distros switched the default shell to zsh (or The Z shell). 
This is essentially entirely compatible with BASH except that it adds some nice quality of life improvements that are beyond the scope of this blog, but feel free to explore on your own. 
I will say that for Mac users specifically, I would reccomend you check out [iTerm2](https://iterm2.com/) as an alternative to the standard terminal and [oh my zsh](https://ohmyz.sh/) to add some amazing color theming for some general improvements. 
But of course this is not necessary.

## Knowing Your Way Around with BASH

First, thing open up your terminal. 
If you are using MacOS or Linux you can expect it to look something like this:

```
NEED to show example can be replaced with an image
```
Explain what each piece means

There are three really important commands to know to navigate around the your file system:
- `pwd`: Print working Directory
- `cd`: Change Directory
- `ls`: List (Contents)

One analogy for these commands is imaging you are on a random street place in a US city that you don't know. 
The `pwd` command is like looking up your current address. It will tell you were you are. 
The `ls` command would be like looking around the street (or on your map) to see what restruants are on the street. 
And `cd` would be like moving to a new location. 
In keeping the analogy, you can't just be told move to an arbritrary new street because you don't know this city. 
Instead you have to give precise directions either from were you are currently or relative to some clearly visable space (say a big colorful building you can see from anywhere in the city). 
Now let's see these in action.

```bash
pwd *instert example* with color if possible*
```

> Need to mention Tab autocomplete is your best friend. Also should mention somewhere that capitalization matters. 

## The form of Commands

A command is just a mini program that executes when you call it from  a terminal. But in order to best understand them its useful to know who they are structured. 

Every command has 3 basic (potential) parts. The command itself, any options you can apply, and finally any arguments. 

Show an example, can either be the `ls` command with -a/l above or move this section down and do it for mkdir/cp -r. 

## Creating/Deleting/Removing New Folders and Files

- `mkdir`: Make Directory
- `touch`: Make an Empty File
- `cp`: Copy
- `mv`: Move

## Viewing Contents and Editing Files

- `nano`: A simple to use text editor. You will likely hear about other editors like `vim` or `emacs`. Both are really good, but they have a really have learning curve, so I don't reccomend them when you start out. I personally use `vim` or `nano` depending on the context. 
- `cat`: Concatenate
- `less`: Less (is more... powerful)
- `more`: More (of the content on screen)

## How to Learn About New Commands

These commands are more important to remember because they let you find a command to do perform and actiona as well as learn how to use that command:

- `apropos`: à propos (meaning with regard to). This command allows you to search for all commands the perform function/have anything in their name/description about a topic. 
  >***If you only remember one command this is the one to remember***
- `man`: (Pull up the) Manual (for the respective command so you can learn all the options available)