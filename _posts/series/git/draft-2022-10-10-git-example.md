---
layout: post
title:  "Taking Git for a Test Drive"
date: 2022-10-03
author: Deshawn Sambrano
tags: Coding Git GitHub
time: 20
category: git
series: git
draft: true
usemathjax: true
diff: intermediate

---

{% include sidebar.html %}

<section class="takeaways">

In this post you will learn the basics of Git and GitHub/GitLab. By the end you will know: 
- The 4 stages of the git workflow
- All the commands relevant to initalizing and working with a git project
- How to set up a Git repository
- How to set up an online repository (via either GitHub or GitLab)
- How to collaborate with any other scientist using Git

Prerequisites:
- None; though it may be helpful to skim through the [Command Line (Bash/zsh)][cli] post first, especially if you do not know how to use the terminal or how to use a bash. 

</section>


## Git Example Time

<!-- excerpt-start -->

Now its time to finally try out `git` to see what all the fuss is about. In this tutorial you will learn the basics of `git` and how to save commits (checkpoints) for you code along the way. Before we get started make sure you have `git` installed by running `git -v`.
If you see any errors make sure you follow these [installation instructions][install].

<!-- excerpt-end -->

### Git Basics

Now we will follow a super basic example to `git`  an understanding (pun intended).
First let's set up the following directory structure.
Make sure each file has some text in them. 
If you are not sure what to type at least make sure each of the files contain 1 line of text that is just the same as the name of the file without and extension. 
So the `hello_world` file can just be have the content `Hello World`. 

```
my_first_git_project/
  |-- hello_world.txt
  |-- goodbye.txt
```

Next we need to create a `README.md` file.
These are super important and as the name implies you should alwasy read this before using some software/code you get online.
As the extension implies, `README.md`'s are in the `markdown` format.
If you are not familiar with markdown, check out my [post][markdown].

>**Hint**: This also means that you should always make a readme file anytime you make a project. 

In this file, you will find basic information about how to setup/configure and run the code that you download. 
It also often describes the basic functionality of the code as this is the first thing anyone will see about the project on GitHub/GitLab. 
For our purposes since this is a basic project, you can just add the level 1 header and a 1 line description.

```md
# My first Git Repo

Learning the basics of the a Git!
```

Next we are going to set up your username and email for all the changes that you will make. 
This isn't required but its super simple so might as well do it.
The follow lines of code assign any changes that you specifically make, to your name. 
Kinda like signing off on your work with a signature, that way we can figure out who did what.

```bash
git config --global user.name "Deshawn Sambrano"
git config --global user.email DSambrano@g.harvard.edu
```

Now that that is all taken care of, we can initialize your repo with:

```bash
git init
```

>**Hint**: Make sure you are already `cd`'d into the correct directory. 
It is common mistake for people initlized there home folder `/Users/Deshawn/` which will track your entire computer 😱! 
Even I did it when I frist started 😅. But don't worry you can just remove any `.git` dir to stop tracking. 

You can confirm everything worked correctly with the `ls -a` command. 
If you see an output that shows a `.git` file then you have correctly init'd your repo 🎉.

```bash
~ my_first_git_project ls -a
.  ..  .git  goodbye.txt  hello_world.txt

```

If you got a warning telling about using master for the inital branch, feel free to follow it, but its just a warning and won't harm anything. If you got another error, go back and make sure that 1. you are in the correct directory, 2. that you haven't already initalized that directory or one of the parent directories.
If all else fails, double check that your installation method was successful with `git -v`, and if not try to install `git` again.

You can also use `git status` to see the status of the repo. 
This is a helpful command that will tell you what branch you are on, and shows all the files in the directory and which stage they are in. 

![Showing Git Status: Untracked Files](/assets/imgs/git_status_untracked.png)

Next we need to tell `git` to track all the files. We can do this individually with `git add hello_world.txt goodbye.txt` or you can use the shortcut to add all files in the current directory.

```
git add .
```

where the `.` just means add everything in the current directory. Once done, the `git status` will update letting you know everything is ready to be commited.

![ Showing Updated Git Status: Staged files ](/assets/imgs/git_status_new.png)

And the final step is to tell `git` to save all the changes in a checkpoint for you. 
This can be done with: 

```
git commit -m "Relevant Message"
```
For the message since this is the first one ***Inital Commit*** works, but for all future commits, I recommend that you make something that concisely explains the changes that are being made.

Each time we want to save the current state of the repo we need to add all relevant files (most of the time you just add everything with `git add .`) and then commit them with a relevant message `git commit -m "Important message"`


## Common Errors and Hiccups
- Initalizing a git repo on your whole Computer (or your home directory `~`)

## Advanced Topics in Git
We covered a lot today, thankfully, that is most of the important things you need. 
However, there are a few advanced topics that I do think are useful to know, even though you might not use them a bunch:
- `.gitignore`: I use this the most on the list. This allows you to tell git to ignore specific files. This is super useful if you have a file that contains any sensative information (e.g., SECRETE_KEYS, Identifiable Subject data, etc.). 
- `git diff `: a function to specifically see what has changed line by line since the last commit

Might not need since there is more to come and this was the warmup.


<!-- ## Homework
Something about setting up a repo and 
-->

## Additional Resources:

[fireshipio](https://youtu.be/HkdAHXoRtos "Fireshipio: Git and Github")



[cli]: {%link _posts/series/cli/2022-10-04-bash.md %}
[install]: {%link _posts/series/git/2022-10-05-git-installation.md %}
[markdown]: {%link _posts/2022-10-03-markdown.md %}