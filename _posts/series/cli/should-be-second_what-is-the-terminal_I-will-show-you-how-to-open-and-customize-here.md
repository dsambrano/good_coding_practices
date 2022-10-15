title: Setting Up and Customizing Your Terminal
Just customizing terminal: express yourself


Bash stuff (e.g., last paragraph, minus the ohmyzsh stuff) stays where it is. Everything else, I think can come here.
With the ability to jump to customization section for those that already know the basics


Actually, it might be valuable to have a short section on the know your OS, because its so beginner, you can have people skip it entirely and just give them customization on a how whole page. (current prefernce, pretty strong actually.)

Gettings Started, what is bash
Could also replace this with the base em title and make that Bash basics part 1: movement, bash basics part 2: creation





## Open Terminal 

All OSes have some type of terminal emulator, by default by there are some subtle differences between them, so I describe each separately. So read through the section that is relevant to you before skipping to the next [section][customization].

### Mac

For Mac, you can use spotlight search (Keyboard Shortcut: `⌘` + `Spacebar`) and type terminal, which should open up the default terminal experience. This will serve you ok, but I actually recommend you try out [iTerm2][], which you can install with your favorite package manager[][packagemanager] (e.g., `brew install iterm2`) or from their website. Finally, if you plan on switching back and forth between Mac and Linux or just want to give it a shot. There are a few terminal emulators, that work across both OSes. Some good examples, include [kitty][] and [alacritty][](also works on Windows with [WSL][]), of course both can be installed from the package manager [][packagemanager] as well or via their websites. The reason, it might be useful to use these is they have a configuration file, so once you set it up once, it will work identically across all the OSes. Of course, the downside, is since you have to edit a file instead of using a GUI to configure, its a little harder for first timers. If you chose one of the two linux ones, jump down to the [linux section for customization][linuxtermcustomization], otherwise continue reading.

#### How to Customize on Mac (Terminal and iTerm2)

Regardless if you choose the default Mac Terminal or iTerm2, they both have the same customization structure.
First you need to open up the preferences (keyboard shortcut: `⌘` + `,`; or click from the topdown menu).

![Preferences Image for iTerm2](/assets/imgs/iterm-pref.png)

The next few options are iTerm2 specific if you want to add these customization options. 

Option 1: Repeat some steps multiple times (obviously not ideal)
Option 2: Now that you know how basic customization works, jump down to the general customization suggestions sections.

---

### Linux


#### Terminal Config Files on Linux

---

### Windows
Git bash and subsystem for linux

---

## Customization
the text there is there now

### Colors

Show how to do a few in practice, then talk about color schemes (Dracula, Dracula,... Dracula)

### Customizing your prompt

There tons of customization options 

Show one example of changing the prompt from bashrc (link to later files). 

Then point out powerlevels10k and the one from TechCrafted, I dont remember the name

[customization]: #customization
[linuxtermcustomization]: #terminal-config-files-on-linux
[iTerm2]: https://iterm2.com/ "iTerm2 Terminal Emulator"
[kitty]: https://sw.kovidgoyal.net/kitty/ "Kitter Terminal Emulator"
[alacritty]: https://alacritty.org/ "Alacritty Terminal Emulator"
[WSL]: https://learn.microsoft.com/en-us/windows/wsl/install "Windows subsystem for linux"
[packagemanager]: {% link future_link.md %}
