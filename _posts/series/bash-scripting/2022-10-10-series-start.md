---
layout: post
title:  "Take your bash Skills to the Next Level"
date: 2022-10-03
author: Deshawn Sambrano
tags: Coding Unix Bash Shell
time: 1
draft: true
usemathjax: true
category: bash-scripting
series: bash-scripting
diff: intermediate

---

{% include sidebar.html %}

<section class="series takeaways">

In this blog you will learn basic bash commands. By the end of this you will know how to:

- Create a script to run multiple commands in sequence
- Edit your `PATH` to run scripts from anywhere
- Control the flow of applications with `if` statements
- Repeat steps with functions and loops
- Create Aliases to increase efficiency

Prerequisites:

- Have read through the previous series on the [basics of `bash`][bash-basics] or have a general understanding of how to move around edit files in `bash`

</section>

This series is designed to build your foundation as a `bash` programmer.
We will cover topics that you would expect to see in all programming languages (e.g., scripts, functions, if statements, loops, etc.) as well as some that are specific to `bash` (e.g., `PATH`, aliases, etc.).
So, if you have no prior experience with `bash` it is probably a good idea to run through my [`bash` basics][bash-basics] tutorial to get you started then come back here to build on those skills.
By the end of this series, you should be able create full applications like the amazing [`ani-cli`][anicli].



[wsl]: https://learn.microsoft.com/en-us/windows/wsl/install "Windows Subsystem for Linux"
[shelldiff]: https://linuxhint.com/differences_between_bash_zsh/ "Differences between Bash and ZSH"
[munix]: https://github.com/ibraheemdev/modern-unix "Modern Unix"
[gitbash]: https://gitforwindows.org/ "Git for Windows"
[iTerm2]: https://iterm2.com/ "iTerm2: Terminal Emulator for MacOS"
[ohmyzsh]: https://ohmyz.sh/ "Oh My Zsh: Prettify you Terminal"
[prime]: https://www.youtube.com/c/ThePrimeagen "The Primeagen YT"
[prime-vim]: https://youtu.be/H3o4l4GVLW0 "Primeagen Vim Playlist"
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
[google-bash-style]: https://google.github.io/styleguide/shellguide.html "Google Shell Style Guide"


<!--IDs-->
[bash-structure]: #the-form-of-commands "The Structure of a Bash Command"

<!--INTERNAL-->
[bash]: {% post_url /series/cli/2022-10-10-bash %}
[bash-basics]: {{site.data.links["series"]["bash-basics"]}}
[packagemanager]: {{site.data.links["general"]["package-managers"]}}
[intro]: /future-links
