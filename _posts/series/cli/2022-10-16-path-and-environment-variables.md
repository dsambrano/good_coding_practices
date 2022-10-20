---
layout: post
title:  "What is the PATH and Environment Variables"
date: 2022-10-03
author: Deshawn Sambrano
tags: Coding Unix Bash Shell
time: 5
draft: true
usemathjax: true
category: cli
series: cli
diff: intermediate

---

{% include sidebar.html %}

<section class="takeaways">

This is a intermediate-level follow up to the cli. Specifically you will learn:
- How to make a bash script (Setting a language with Shebang `#!`; Changing permissions `chmod`)
- Taking in arguments/user input for your script
- Change your `$PATH` to run scripts anywhere
- What is `.bashrc` / `.zshrc`

Prerequisites:

- Knowledge of basic shell commands 
- Read through the [Command line (Bash/Zsh)](cli.md)

</section>


## What is a Variable

Up until now, I have only tagentially mentioned the concept of a variable.
A variable is a part of your script that can change either from user input or come other parts of your script.
Variables are a foundational part of any programmers toolkit because they allow you to write code that is adaptable to the use case instead of having to know all of the details before the project starts. 

In the previous post we used the `$1` variable to represent the first argument with the command.
We did not know in advance what is was going to be, but we just knew we wanted to print it out. 
Additionally, we use the `read` command to read input from the user and store that as a variable to be used later on in the script.
So you already have a sense of how variables can be used.
Here, I am just going to spell out some good practices with variables.

For example, typically you want to always create/assign all your variables at the top of your script. 
There are some exceptions, but in general, you should try to stick to this rule.
It helps make your code much more readable and editable in the future so its good to get in the habit early.
Another type is if you assign it once, and dont expect it to ever change, then you typically use all caps (using underscores instead of dashes).
In contrast, if its a variable that you expect to change a few times or only lives inside a fucntion, then it can be lower case.
This is not set in stone, but again its a good practice to have in all languages.
For more best tips on general good practices I will be making one in the future, but until then you can check out [Googles Shell Style Guide][google-bash-style].

When defining a variable in your script you will need to know a few things. 
To define a variable you need to use the following structure:

```bash
VARIABLE_NAME=VALUE
```

Importantly, there should be no spaces before and after the `=`.
Once you have a variable stored, you can use it anywhere in the script.
All you need to do is use the `$` before the variable name. For example, `$VARIABLE_NAME`.


### Environment Variables

Environment Variables are a special type of variable that are always accessible.
That are available in every script on your computer and can even be used from the command line.
To set an environment variable you can use the `export` command.
For example, you can set your name as an environment variable with the following command:

```bash
export NAME=Deshawn
```

You can see a list of all of your environment variables with the `env` command.
I have a lot of environment variables, so I won't show my output, but there is one in particular that you should note.
That is the `$PATH` variable.

## What is the `$PATH` variable and how to we adjust it

The `PATH` environmnet variable is a special one.
This variable tells you computer where to look for terminal commands.
So your computer will look at each folder to find the command you try to use.
If it does not find the command in that folder it will continue to the next until it finishes teh full path.

By default your path is: `/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin`.
Each of the colons `:`, signifies a different directory.
So when looking for a command it will first search in `/usr/bin` then move to `bin` if that is unsuccessful and so forth.

It is very common practice to edit your `PATH` to allow you to have access to other commands regardless of what directory you are in.
Here is my `PATH`:

![My Path](/assets/imgs/path.png)

Just like you saw previously, you can use the `export` command to change your `PATH`.
For example, you can add the `first_folder` to the beginning of the `PATH` with:

```bash
export PATH="$HOME/Documents/first_folder/:$PATH"
```

This command will adjust your `PATH` to move the `first_folder` in the beginning of your `PATH` before it searches any other folder.
Note I use the `HOME` environment variable so I dont have to type out `/home/buddy`, then after the folder name I use a `:` to separate the next folder in the sequence.
Then I add the `PATH` variable again at the end.
This allows you to keep the old `PATH` at the end without removing it.
It would mess up your whole system if that were to happen.
In case you ever do mess up your path you can always use this to reset it.
Here I don't include the `PATH` variable because I am resetting it entirely.

```bash
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
```

One thing you will probably notice, is that anything you `export` only lasts as long as you have the terminal open.
If you close it everything resets.
To solve this, you can adjust your `.bashrc` or `.zshrc`.


## What is the `.bashrc`/`.zshrc` and why do I need to know it

One final thing to note, is the that when assigning an environmental variable with `export`, it will only last for that session.
If you open a new tab/window or if you close this one and open a new one, you will not longer have access to that environment variable.
This is where you `.bashrc` or `.zshrc` come into play.
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
Add the relevant export to the end of this file (you learned about appending with `echo` or editing with `nano`).


[google-bash-style]: https://google.github.io/styleguide/shellguide.html "Google Shell Style Guide"
