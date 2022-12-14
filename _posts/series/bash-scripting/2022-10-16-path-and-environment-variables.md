---
layout: post
title:  "What is the PATH and Environment Variables"
date: 2023-01-04
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

<section class="takeaways">

In this post, you will learn how creating a script in bash as well as how to edit your `PATH` to allow you to run in from anywhere.
Specifically you will:

- Learn about Evironment Variables
- Learn how to change your `$PATH` to run scripts anywhere
- Learn what is a `.bashrc` / `.zshrc` file
- Learn about aliases

Prerequisites:

- Have read through my series on the [basics of `bash`][bash-basics] or have a general understanding of how to move around edit files in `bash`

</section>



## Environment Variables

<!-- excerpt-start -->
Environment Variables are a special type of variable that are always accessible.
They are available in every script on your computer and can even be used from the command line.
One example is the `HOME`, which is your home folder:

<!-- excerpt-end -->

```bash
echo $HOME  #  👉️ /home/buddy/  # Note, yours will be different
```

To set an environment variable you can use the `export` command.
For example, you can set your name as an environment variable with the following command:

```bash
export NAME="Your Coding Buddy"
```

Now you can access this variable from the command line with:

```bash
echo $NAME  #  👉️ "Your Coding Buddy"
```

You can see a list of all of your environment variables with the `env` command.
I have a lot of environment variables, so I won't show my output, but there is one in particular that you should note.
That is the `$PATH` variable.

### What is the `$PATH` variable and how to we adjust it

The `PATH` environmnet variable is a special one.
This variable tells your computer where to look for terminal commands.
So your computer will look at each folder to find the command you try to use.
If it does not find the command in that folder it will continue to the next until it finishes the full `PATH`.

> Note: Do not confusion `PATH` or `$PATH` with path or path/to/dir.
Typically, the latter two refer to the location on your filesystem where the former to are the actual environment variable.

By default your path is:

```bash
/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
```
Each of the colons `:`, signifies a different directory.
So when looking for a command it will first search in `/usr/bin` then move to `/bin` if that is unsuccessful and so forth.

It is very common practice to edit your `PATH` to allow you to have access to other commands regardless of what directory you are in.
Here is my `PATH`:

![My Path](/assets/imgs/path.png)

Just like you saw previously, you can use the `export` command to change your `PATH` since it is an environment variable.
For example, you can add the `first_folder` to the beginning of the `PATH` with:

```bash
export PATH="$HOME/Documents/first_folder/:$PATH"
```
> Remember `bash` is case sensitive, so make sure you type in the correct directory location.

This command will adjust your `PATH` to include the `first_folder` at the beginning of your `PATH` before it searches any other folder.
Note I use the `HOME` environment variable so I don't have to type out `/home/buddy`, then after the folder name I use a `:` to separate the next folder in the sequence.
Then I add the `PATH` variable again at the end.
This allows you to keep the old `PATH` at the end without removing it.
It would mess up your whole system if you were to accidently remove the old folders from your `PATH`.
In case you ever do mess up your path you can always use this to reset it.
Here I don't include the `PATH` variable because I am resetting it entirely.

```bash
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
```

One thing you will probably notice, is that anything you `export` only lasts as long as you have the terminal open.
If you close it, everything resets.
To solve this, you can adjust your `.bashrc` or `.zshrc` to make them permanant.


## What is the `.bashrc`/`.zshrc` and Why do I Need to Know it

When assigning an environmental variable with `export`, it will only last for that session.
If you open a new tab/window or if you close this one and open a new one, you will not longer have access to that environment variable.
This is where `.bashrc` and `.zshrc` come into play.
These files are run everytime you open up a new terminal, so if you add the `export` command to your `rc` file, it will be available everytime you open up a new terminal/tab.

Its important you know what shell you are using to know which file you need to edit because you might have both.
To check you default shell you use, you can run either of the following commands:

```bash
echo $0
echo $SHELL
```

Once you know which shell you are using, you will need to find the file.
They are both located in your home directory, so for `bash` its located at `~/.bashrc`.
The `zsh` one is located at `~/.zshrc`.
Note the `.` since these are hidden files.
Add the relevant export to the end of this file (you learned about appending with `echo` or edited with your favorite text editor).

### Aliases

Perhaps the most valuable `rc` changes you can make are your `alias`es.
`alias`es are alternative shorthands for command.
You can assign an `alias` to any command.
Some common examples include `alias`ing the `ls -lha` to `ll`.
The general structure of an `alias` is:

```bash
alias ALIAS_NAME="LONG OLD COMMAND"
```
so for the example above you would do

```bash
alias ll="ls -lha"
```

now, instead of typing out `ls -lha`, you can just type `ll` to get the same output.
Here is a list of a few common `alias`es, but you should try to make your own, just don't forget to add them to your `bashrc` or `zshrc` file or you won't have permanant access to them.

- `ll="ls -lha"`
- `..="cd .."`
- `...="cd ../.."`: I have this repeated a few time so I can go back many directories just with `.....`
- `g=git`: Notice, you don't need quotes if you do not have any spaces in your command
- `ga="git add"`
- `gcm="git commit -m"`
- `myip="curl ipinfo.io/ip"`: Prints your public ip address

For more common ones, you can check out this [repo][common-aliases].


## Recap

In this post, you learned about `bash` environmnet variables and how to update your `PATH` to run scripts from anywhere.
Finally, you learned about making changes to your environment permenant with `~/.bashrc` or `~/.zshrc` as well as how to add `alias`es to the `.rc` file.


[google-bash-style]: https://google.github.io/styleguide/shellguide.html "Google Shell Style Guide"
[common-aliases]: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/common-aliases#common-aliases-plugin "Common Aliases"

<!--INTERNAL-->
[bash-basics]: {{site.data.links["series"]["bash-basics"]}}
