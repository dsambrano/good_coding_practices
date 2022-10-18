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
diff: advanced
---



{% include sidebar.html %}

<section class="takeaways">

This post is all about looking good while coding in the terminal. By the end of it you should: 
- Know how to set up a Terminal and customize the look and feel

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

<!-- excerpt-end -->

## Open Terminal 

Each Terminal Emulator has its own method of configuring its preferences.
Here I will show you the general struture for how to change them for each of the major types.
Once you know how to configure the settings for your prefered terminal emulator you can skip to the section about some [reccomended settings][settings] and continue following along with the tutorial.

### GUI (iTerm2 / MacOS, Gnome, KDE Terminal)

Regardless of whether you choose the iTerm2 or any of the default MacOS/Linux Terminals, they all have the same customization structure.
First you need to open up the preferences (keyboard shortcut: `⌘` + `,`; or click from the topdown menu).
Mac you need to access the apps preferences by either the keyboard shortcut (keyboard shortcut: `⌘` + `,`) or by clicking the apps name in the title bar and then going to preferences. <!-- ➔ -->
For Gnome, you need to access preferences from the hamburger menu (`☰`) in the top right. On KDE-Plasma, you need to click setting ➔ Configure Konsole. 

Once you have opened the preferences menu, it should look something like the image below. For brevity, I am only showing the iTerm2 Preferences panel, but they are quite similar in structure.

![Preferences Image for iTerm2](/assets/imgs/iterm-prefs.png)

The next few options are iTerm2 specific if you want to add these customization options. 

Option 1: Repeat some steps multiple times (obviously not ideal)
Option 2: Now that you know how basic customization works, jump down to the general customization suggestions sections.


### Config File (Kitty and Alacritty)

For pretty much all terminals that use a config file, the easiest way is to downlown the default config file as a start.
For most of them, they include all (if not most) of the defaults, and typically have a lot of comments to describe each section.
Here are the links for [kitty sample config][kitty-config] and the [alacritty sample config][alacritty-config].
You will want to double check your specific apps config file location, but typically they go in the xdg default config.
For example, for kitty it would be in `~/.config/kitty/` directory and alacritty would be in `~/.config/alacritty/` directory.

From there, you have total and complete reign to edit your terminal however you see fit, thats sorta the draw with config file style preferences. You have total controll to make something look absolutely amazing (or the power to make them look terrible 😂).
But to give you some guidance, here are a bunch of nice themes you could implement for [kitty themes][kitty-themes] and [alacritty themes][alacritty-themes].

### GitBash

As the name implies, gitbash only lets you use `bash`, so you do not have access to all the niceties for customization as `zsh`.
As such, you unfortunately, have a bit more complicated customization process.
It is a bit to much to explain in this simple blog post, so here is a good [post][gitbash-custom] to get you started.
You could try to use the Starship example below, but I do not know it that works or not for git-bash.


## General Customization

Now that you know how to edit your terminal's preferences, you can get to the real fun.
Of course the easiest thing to change is the colors, so I would start there.
My suggestion is to look their the theme options your Terminal emulator provides and use that as a base, and then adjust those accordingly.
Especially when you are new to customization, it can be overwhelming to decide on all the color options, so having a starting place it very helpful.

It is important to note that there are tons of really great color themes available regardless of your Terminal Emulator, so I recommend doing a quick search with the name of your emulator and `color theme`.
I tend to use a custom modified version of the [Dracula theme][dracula], so that might be a good place to explore (just search the app you want to add the theme to and then follow the instructions).
Unfortunately, this is not something I can help to much with because its all a matter of personal preferences.
So, just open up your preferences and try some colors out!

The next section is where things get really exciting, you get to customize your command prompt!
As a reminder the command prompt is the information displayed before the command line (the part you can actually time into).
One that works really well across all the different shells is [Starship][].
Once installed (with your favorite [package maganger][packagemanager]) or via the [instructions specific to your OS][starship-install], you can apply it to your shell with either `eval "$(starship init bash)"` or `eval "$(starship init zsh)"` depending on your shell.
Below is an example of what Starship looks by default:



![Starship Default][starship-default]

## `Zsh` Specific Customization

*Mac users can avoid this paragraph.*
Although many Linux distros have switched to `zsh` not all of them have, so make sure you are using `zsh` before using these customization options. This can be done by first installing zsh with your distros [package manager][packagemanager], then running the following command to chang `zsh` to your default shell:

```bash
chsh -s $(which zsh)
```

*Welcome back Mac peeps.*
Now that everyone is back on the same page, we can begin with `zsh` specific customizations.
> Note: I have only personally tested these on MacOS and Linux using iTerm2, kitty, and Gnome Terminal, so your mileable may vary if you are using something else.

The first addon is called [oh my zsh][ohmyzsh], which adds some amazing color theming for some general improvements.
Out of the box, your experience will already be much better than default. It will add a bunch of aliases, to allow you to use shortcuts for some commands, as well as a plugin for `git` to allow you to know what branch you are using and the changes since last merge/push etc.

![Oh My Zsh Default][omz-default]

If you want to take this to the next level you can add the [PowerLevels10k theme][p10k] on top of oh my zsh to get really amazing looking prompt sections.

![powerlevels10k Default][p10-default]


For the best performance on PowerLevels10k, you will need to install the correct font ([MeslsoLGS][mes-font])

Of course this is not necessary, but I think it adds a lot when you are coding and you are enjoying what you are looking at.
For those that are interested, I will be uploading a post soon on how I setup my 
*Mac users, I will be uploading an install script to match my own setup. And a link to it will be updated here.*

## Customizing Your Commands

As you saw through the tutorial, I have a lot more icons and colors compared to the default terminal experiences.
You can add a lot with ...
I use lsd and exa to replace ls 
bat to replace cat
zoxide to replace cd
tldr to replace man


As you can imagine, this is just a taste of the command line. You can do so so much more. Hopefully this was just enough to wet your appetite, and make you eager to explore more. One great place to start is with [Modern Unix][munix]. This is a project that has upgrades many of the commands we just talked about to fit with the modern world, (e.g., adding colors, speed, etc.). Another way to speed things up is to make alias which you can write short hand for really long commands.

### Aliases
Now that I have changed all my commands to the new modern version, I don't want to mess up my mucsle memory for the old commands, so I make aliases to all of them. For example, I make a alias for `alias ls=exa`



## Further Exploration

As you can imagine, you can go absolutely wide with customizing every last bit of your terminal, especially if you choose a terminal that has a config file. This post really just scratched the surface and if you want to get more into customization, you should check out the reddit thread [r/unixporn][unixporn]. The name sounds a bit odd, but you don't have to worry, its generally quite safe, its just people showing off how cool their unix based systems look after they have done all their customizations. They often leave config files, so they can be replicated! I do want to note that most will be using linux because you have way more customization options, which is a big selling point. But there are a few ones for MacOS, so its not all doom and gloom for the apples fans.
Below are a few examples of what you can find on [r/unixporn][unixporn] (the last one in particular is pretty cool because they even customized their spotify colors to match their overall aesthetic):

![Cute and Bubbly Theme][bubbly-theme]
![Darth Vader Theme][vader]
![Edgey Gaming Theme][edgy-theme]
![Purple Theme with Custom Spotify Client][purple-spotify]



You might notice that they typically have the apps in this tiled like format.
I will throw one final plug, in that they did not do that by hand. 
Instead they used whats called a tiling window manager to organize all their open apps into nice little tiles.
Tiling window managers are amazing for looks, and offer a huge boost to productivity as well.
So stay tuned for a future post about them and how to set them up.




[customization]: #customization
[settings]: #general-customization
[linuxtermcustomization]: #terminal-config-files-on-linux
[dracula]: https://draculatheme.com/ "Dracula Theme Website"
[iTerm2]: https://iterm2.com/ "iTerm2 Terminal Emulator"
[ohmyzsh]: https://ohmyz.sh/ "Oh My Zsh: Prettify you Terminal"
[p10k]: https://github.com/romkatv/powerlevel10k "PowerLevels10k"
[mes-font]: https://github.com/romkatv/powerlevel10k#manual-font-installation "Install MeslsoLGS"
[starship]: https://starship.rs/ "Starship Prompt Customization"
[starship-install]: https://starship.rs/guide/#%F0%9F%9A%80-installation "Install Starship"
[kitty]: https://sw.kovidgoyal.net/kitty/ "Kitter Terminal Emulator"
[kitty-themes]: https://github.com/dexpota/kitty-themes "List of Kitty Themes"
[kitty-config]: https://sw.kovidgoyal.net/kitty/_downloads/433dadebd0bf504f8b008985378086ce/kitty.conf "Kitty Default Config"
[alacritty]: https://alacritty.org/ "Alacritty Terminal Emulator"
[alacritty-themes]: https://github.com/eendroroy/alacritty-theme "List of Alacritty themes"
[alacritty-config]: https://github.com/alacritty/alacritty/blob/master/alacritty.yml "Alacritty Default Config"
[WSL]: https://learn.microsoft.com/en-us/windows/wsl/install "Windows subsystem for linux"
[gitbash-custom]: https://blog.devgenius.io/how-to-customize-the-git-bash-shell-prompt-336f6aefcf3f
[unixporn]: https://www.reddit.com/r/unixporn/ "Reddit: r/unixporn"
[utsav]: https://youtu.be/0MiGnwPdNGE "Engineering with Utsav: Terminal Setup on Mac"
[pywal]: https://github.com/dylanaraps/pywal "Pywal to get custom Color pallette from your wallpaper"


<!-- IMGAGES -->
[omz-default]: https://user-images.githubusercontent.com/49100982/108254738-764b8700-716c-11eb-9a59-4deb8c8c6193.jpg "Default Oh My Zsh Theme"
[p10-default]: https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/prompt-styles-high-contrast.png "Power Levels 10k Default Theme"
[starship-default]: https://raw.githubusercontent.com/starship/starship/master/media/demo.gif "Starship Theme Gif"
[vader]: https://i.redd.it/1hkekhgd37u91.png "Darth Vader Theme Terminal"
[bubbly-theme]: https://i.redd.it/5p0k6faqevt91.png "Bubbly Theme Terminal"
[edgy-theme]: https://i.redd.it/9icft9m71yt91.png "Edgey Gaming Theme"
[purple-spotify]: https://i.redd.it/uchnhil1txt91.png "Purple Theme with Spotfiy Customization"





[intro]: {}



[packagemanager]: /future-links
