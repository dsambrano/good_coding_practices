---
layout: post
title:  "Customizing Your Terminal"
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


Just customizing terminal: express yourself


Bash stuff (e.g., last paragraph, minus the ohmyzsh stuff) stays where it is. Everything else, I think can come here.
With the ability to jump to customization section for those that already know the basics


Actually, it might be valuable to have a short section on the know your OS, because its so beginner, you can have people skip it entirely and just give them customization on a how whole page. (current prefernce, pretty strong actually.)

Gettings Started, what is bash
Could also replace this with the base em title and make that Bash basics part 1: movement, bash basics part 2: creation


## Apperance is Important


Change your Default Terminal Colors **NOW**!

> The happier you are when you look at your terminal the happier you will be when coding.
More Happy means more coding.
More Coding means more practice.
More practice means Great Coder!

This same principle applies for all text editors/IDEs (integrated developer environment) by the way.
It sounds like a joke, but seriously, take some time to have a nice looking coding environment.

In order to change them, you should be able to create a default profile for most terminal emulators and change the color scheme, opacity, font, background image, etc.





REORG this to be each headers is a Terminal Emulator

## Open Terminal 

Each Terminal Emulator has its own method of configuring its preferences.
Here I will show you the general struture for how to change them for each of the major types.
Once you know how to configure the settings for your prefered terminal emulator you can skip to the section about some [reccomended settings][settings] and continue following along with the .

All OSes have some type of terminal emulator, by default by there are some subtle differences between them, so I describe each separately. So read through the section that is relevant to you before skipping to the next [section][customization].

### GUI Customization (iTerm2 and Default  MacOS/Gnome/KDE Terminal)

Regardless if you choose the default Mac Terminal or iTerm2, they both have the same customization structure.
First you need to open up the preferences (keyboard shortcut: `⌘` + `,`; or click from the topdown menu).

![Preferences Image for iTerm2](/assets/imgs/iterm-pref.png)

The next few options are iTerm2 specific if you want to add these customization options. 

Option 1: Repeat some steps multiple times (obviously not ideal)
Option 2: Now that you know how basic customization works, jump down to the general customization suggestions sections.

### Config File Customization (Kitty and Alacritty)

### GitBash Customization

As the name implies, gitbash only lets you use `bash`, so you do not have access to all the niceties for customization as `zsh`.
As such, you unfortunately, have a bit more complicated customization process.
It is a bit to much to explain in this simple blog post, so here is a good [post][gitbash-custom] to get you started.


## General Customization

## `Zsh` Specific Customization

Although many Linux distros have switch to `zsh` not all of them have, so make sure you are using `zsh` before using these customization options

I will say that for Mac users specifically, I would reccomend you check out [iTerm2][] as an alternative to the standard terminal and [oh my zsh][ohmyzsh] to add some amazing color theming for some general improvements. 
But of course this is not necessary. *Mac users, I will be uploading an install script to match my own setup. And a link to it will be updated here.*

## Customization
the text there is there now

### Colors

Show how to do a few in practice, then talk about color schemes (Dracula, Dracula,... Dracula)

### Customizing your prompt

There tons of customization options 

Show one example of changing the prompt from bashrc (link to later files). 

Then point out powerlevels10k and the one from TechCrafted, I dont remember the name

[customization]: #customization
[settings]: #general-customization
[linuxtermcustomization]: #terminal-config-files-on-linux
[iTerm2]: https://iterm2.com/ "iTerm2 Terminal Emulator"
[ohmyzsh]: https://ohmyz.sh/ "Oh My Zsh: Prettify you Terminal"
[kitty]: https://sw.kovidgoyal.net/kitty/ "Kitter Terminal Emulator"
[alacritty]: https://alacritty.org/ "Alacritty Terminal Emulator"
[WSL]: https://learn.microsoft.com/en-us/windows/wsl/install "Windows subsystem for linux"
[gitbash-custom]: https://blog.devgenius.io/how-to-customize-the-git-bash-shell-prompt-336f6aefcf3f

[intro]: {% link _posts/series/cli/2022-10-03-cli.md %}



[packagemanager]: /future-links
