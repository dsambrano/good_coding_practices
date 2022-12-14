---
layout: post
title: You Need to Learn Package Managers, Right Now!
date: 2022-09-07
author: Deshawn Sambrano
tags: Coding
time: 5
permalink: /package-managers
usemathjax: false
series: false
diff: beginner

---

{% include sidebar.html %}

<section class="takeaways">

In this blog you will learn the basics of packaging managers.
Package Managers are a developers best tool to install and update all the apps on your system.
Gone are the days of searching online for an app and clicking through the install, here comes the almighty Package Manager.
If you already know why its useful/already implement it, feel free to jump around.
By the end you will learn:

- What a Package Manager is
- What are the differences between package managers
- How to use them to install and update all your software on your computer

Prerequisites:
- None

</section>

## What Even Are Package Mangers

<!-- excerpt-start -->
Let's say I asked you to install R and Rstudio on a new computer, what would you do.
You would Google them one by one and then click on the link, then go to the downloads page, go to the section for your OS and then finally download it.
Once that is done, you have to go to your download folder and double click the installer (on Mac move the app to the Applications folder), follow through the steps waiting to hit confirm each time while it asks you where it should be installed and for your passwords.
But there is a simpler way, just use a package manager!
You can install both on a Mac with `brew install --cask R rstudio`, and you are done!
Want to update them to the latest version, just run `brew upgrade`.
It may sound to good to be true, but I promise you its not.
<!-- excerpt-end -->

Package managers are tools to properly manager all the applications on your computer.
Every app has certain dependencies and websites to download the apps etc.
What about if one app requires a specific version of another app but a third app requires the older version?
A package manager deals with all these issues.
If you have ever used `install.packages` in R or `pip` in Python these are sorta the same thing, but they only manage packages for that specific language (and to worse effect because neither deal with conflicting dependencies well).

In contrast a general purpose package manager, handles all the apps on your computer.
So never again will you need to Google `Spotify download` and find the correct OS and install.
Instead you just type `brew install --cask spotify` and everything will be downloaded for you.
Uh-oh you got some updates, well `brew update` will handle all of them all at once.
They are a huge time saver, and since they work from the command-line, you can programmatically set them to run whenever you want.
So for example, I have a script that installs all my apps whenever I get a new computer, which uses a package manager ([check out the script here][github]).


## General Syntax

In general, all the package managers have the following syntax.
To install a package use

```bash
MANAGER install package_name
# May need sudo privileges
sudo MANAGER install package_name
```
removing a package is just as easy, typically with:

```bash
MANAGER uninstall package_name
# or in some cases
MANAGER remove package_name
```

If you are not sure what a package is called, you can always just search for it:

```bash
MANAGER search query
```

updating is just as simple:

```bash
MANAGER update # updates your list of what is the newest app version numbers
MANAGER upgrade # actually updates the apps to the latest versions on your list
# Some automatically do both steps at once but not all so I listed them here

MANAGER upgrade package_name # Only updates the specific package.
```


Many package managers, will require you to either confirm what you are installing or confirm that you can install the necessary dependencies along with them.
This confirmation can occur automatically by adding the `-y` option.
Of course, not all package managers are the same, so yours may have slightly different syntax, so feel free to check online to see if yours has anything wierd going on (looking at you `pacman`).
But in general this structure should work for `apt`, `brew`, `dnf`, `chocolatey` and `winget`.

## Which Package Manager to Use?

To install a package manager you need to first know what OS you are running.
Go to the appropriate section depending on your OS before continuing.
For several of the package managers I have an install script on [github][] for you to check out.
Just go to the `package_installs.sh` script in the folder for the relevant OS.

---

### Linux

Linux is where package managers came from, so its no wonder that they have some of the best, and also explains why they come with your distro by default.
It does depend on you distro, and if you are using Linux, you are probably already familiar, but just in case here are the main ones.

- For Debian/Ubuntu and all the distros based on either of these, you will use `apt`, which is definitely the most common. Pretty much every tutorial will assume `apt` ([my sample apt install script][linux-apt])
- For Red Hat Enterprise Linux (RHEL) based distros, you are looking at `dnf` ([my sample dnf install script][linux-dnf]).
- And for all Arch based distros, you will have `pacman` this one has funky syntax with `pacman -S` to install things. So you should checkout the [Arch Linux Wiki][archwiki] for where yours may differ.

Of course there is [flatpak][] which has been all the rage since the SteamDeck and is quickly becoming the new favorite universal package manager on Linux (meaning it works across all linux distros).
Ubuntu also created [snaps][], but those are notoriously slow.
And for people who like to add more work to their life, you can install [App Images][appimages]

P.S. I just discovered [`nix`][nix], which is a really powerful cross platform solution, for more info check out [Chris Titus Tech's Video][ctt-nix]

---

### MacOS

MacOS has a few different options.
My preferred one is [`homebrew`][homebrew], which uses the `brew` command.
This along with all MacOS package managers require Xcode command line tools.
And they can be installed with the following commands:

```bash
# Requires Xcode, so install that first
xcode-select --install

# Installs homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

`brew` uses a slightly different syntax depending if the app is just exclusively for the command line or if its installs a GUI.
To install a CLI app (e.g., Python, R, git), use `brew install app_name` and to install a GUI app (e.g., RStudio, Visual Code Studio, Spotify) use `brew install --cask app_name`.
Other than that, it is pretty much the same as the rest of them.
For an example, you can check out my [install script][mac-brew] using `homebrew`.

If you are looking for something a little different, you can always try out [`macports`][macports].

---

### Windows

Windows also has a few different options, but I will mention up front, I do not find them as useful compared to their MacOS, and especially Linux, counterparts.
They are still worth trying out, especially because application management on Windows is a nightmare and viruses are plentiful, but I just wanted to set you expectations up front.
First off is [chocolatey][], which I have used in the past.
Additionally, there is winget which is installed by default.






[archwiki]: https://wiki.archlinux.org/title/pacman "Arch Linux Wiki: Pacman"
[homebrew]: https://brew.sh/ "Homebrew Package Manager"
[macports]: https://www.macports.org/install.php 'Macports installer'
[chocolatey]: https://chocolatey.org/install "Chocolatey Installer"
[flatpak]: https://flatpak.org/setup/ "Flatpak Install"
[snaps]: https://codeburst.io/how-to-install-and-use-snap-on-ubuntu-18-04-9fcb6e3b34f9 "Install Snaps"
[appimages]: https://appimage.org/ "App Images"
[mac-brew]: https://github.com/dsambrano/dotfiles/blob/main/mac/package_installs.sh "Mac Installs with HomeBrew"
[github]: https://github.com/dsambrano/dotfiles/ "Dotfiles Installs"
[linux-dnf]: https://github.com/dsambrano/dotfiles/blob/main/linux/fedora/package_installs.sh "Fedora DNF install"
[linux-apt]: https://github.com/dsambrano/dotfiles/blob/main/linux/ubuntu/package_installs.sh "Ubuntu Apt installs"

[nix]: https://github.com/NixOS/nix "Nix Package Manager"
[ctt-nix]: https://www.youtube.com/watch?v=Ty8C2B910EI "Chris Titus Tech: Nix Package Manager"
