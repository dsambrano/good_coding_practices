---
layout: post
title:  "Taking Git for a Test Drive"
date: 2022-10-03
author: Deshawn Sambrano
tags: Coding Git GitHub
time: 5
category: git
series: git
draft: true
usemathjax: true
diff: beginner

---

{% include sidebar.html %}

<section class="takeaways">

In this post you will learn the basics of Git and GitHub/GitLab. By the end you will know: 
- The git workflow
- All the commands relevant to initalizing and working with a git project
- How to set up a Git repository

Prerequisites:
- None; though it may be helpful to skim through the [Command Line (Bash/zsh)][cli] post first, especially if you do not know how to use the terminal or how to use a bash. 

</section>


## Git Example Time

<!-- excerpt-start -->

Now its time to finally try out `git` to see what all the fuss is about. In this tutorial you will learn the basics of `git` and how to save commits (checkpoints) for you code along the way. Before we get started make sure you have `git` installed by running `git -v`.
If you see any errors make sure you follow the [installation instructions][install].

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
These are super important and as the name implies you should always read this before using some software/code you get online.
As the extension implies, `README.md`'s are in the `markdown` format.
If you are not familiar with markdown, check out my [post][markdown].

>**Hint**: This also means that you should always make a readme file anytime you make a project. 

In this file, you will find basic information about how to setup/configure and run the code that you download. 
It also often describes the basic functionality of the code as this is the first thing anyone will see about the project on GitHub/GitLab. 
For our purposes since this is a basic project, you can just add a Level 1 header and a simple description.

```md
# My first Git Repo

Learning the basics of the a Git!
```

Next we are going to set up your username and email for all the changes that you will make. 
This isn't required but its super simple so might as well do it.
The follow lines of code assign any changes that you specifically make, to your name. 
Kinda like signing off on your work with a signature, that way we can figure out who did what.

```bash
git config --global user.name "YOUR NAME"
git config --global user.email YOUR_EMAIL@DOMAIN.COM # Default: github_username@users.noreply.github.com
```

Now that that is all taken care of, we can initialize your repo with:

```bash
cd DIRECTORY_OF_INTREST
git init
```

>**Hint**: Make sure you are already `cd`'d into the correct directory. 
It is common mistake for people initlized there home folder `/Users/Deshawn/` which will track your entire computer 😱! 
Even I did it when I frist started 😅. But don't worry you can just remove any `.git` dir to stop tracking. 

You can confirm everything worked correctly with the `ls -a` command. 
If you see an output that shows a `.git` file then you have correctly initialized your repo 🎉.

```bash
~ my_first_git_project ls -a
#.  ..  .git  goodbye.txt  hello_world.txt

```

If you got a warning telling about using master for the inital branch, feel free to follow instructions, but its just a warning and won't harm anything. If you got another error, go back and make sure that 1. you are in the correct directory, 2. that you haven't already initalized that directory or one of the parent directories.
If all else fails, double check that your installation method was successful with `git -v`, and if not try to reinstall `git` again.

You can also use `git status` to see the status of the repo. 
This is a helpful command that will tell you what branch you are on, and shows all the files in the directory and which stage they are in. 

![Showing Git Status: Untracked Files](/assets/imgs/git_status_untracked.png)

As a reminder, `Untracked` is one of the stages in which the files have are not currently being tracked by `git`.
So now, we need to tell `git` to track all the files.
Once tracked, `git` will take not all every change that occurs to a file.
We can track files individually with `git add hello_world.txt goodbye.txt` or you can use the shortcut to add all files in the current directory.

```bash
git add .
```

where the `.` just means add everything in the current directory (and the subdirectories).
Once done, the `git status` will update letting you know everything is now `Staged` and ready for the next commit.

![ Showing Updated Git Status: Staged files ](/assets/imgs/git_status_new.png)

The final step is to tell `git` to `commit` all the changes.
When you `commit` one or a group of files, they will be saved as a checkpoint.
All the previous `commit`s will be saved, so you can always go back to any of them in case something happens.
So when you `commit` some files, you need to write a small message describing what was changed.
You can commit all `Staged` files and write a message with the following command:

```
git commit -m "Relevant Message"
```
Each time we want to save the current state of the repo we need to add all relevant files (most of the time you just add everything with `git add .`) and then commit them with a relevant message `git commit -m "Important message"`.
Since this is the first commit ***Inital Commit*** works, but for all future commits, I recommend that you write something that concisely explains the changes that are being made.
`Commit`s are most effective when they are small, so it is good practice to have each commit focus on one change.
If you need to make more changes commit the ones that have already been changed first before starting on the next.
Small incremental `commit`s makes it significantly easier to identify problems in the code because you can always revert the problematic `commit`.
If you have very large `commit` the bug introduced might have also been committed with a new important feature, making it harder to seperate out the bug.


## Common Errors and Hiccups

When people first tryout something new, its expected to make a lot of mistakes.
So, I just wanted to take the time to highlight a few common ones.

The first is for people to inialize their home directory (`~`).
This typically happens by forgetting to `cd` into the correct directory before running `git init`.
If you are not sure what `cd` is checkout my series on [`bash`][cli].

The next common mistakes is more of a group of mistakes.
They all are centered about bad `commit`ting behavior.
The first, and by far most common, is people not write useful messages when `commit`ting.
Some examples include `Fixed Bug` or `Added Function`.
These messages give absolutely not information about what changed since the last `commit`.
Instead, you should make they are more informative like these: `Bug Fix: Updated Screen Issues Prevent Screen to Update` or `Added Function that Allows User to Restart Application`.
They are more informative for you and anyone else who edits the code to allow them to know what checkout to return to if an issue occurs.

Second is not `commit`ting often enough.
Again `commit`s are intended to be all centered around one small change.
So let's say you are making changes to a file and you realize you also need to make a change to other code.
If the new code is related to the same problem you are tackling, thats ok, but if its focusing on some other thing, stop and `commit` the changes you already made before continuing.
Of course, there will be cases where you will need to edit lots of files for a single `commit`; that is ok if the changes in each file are all related, but if not make them separate `commit`s.


## Advanced Topics in Git

We covered a lot today, thankfully, that is most of the important things you need. 
However, there are a few advanced topics that I do think are useful to know, even though you might not use them a bunch:
- `.gitignore`: I use this the most on the list. This allows you to tell git to ignore specific files. This is super useful if you have a file that contains any sensative information (e.g., SECRETE_KEYS, Identifiable Subject data, etc.). 
- `git diff `: a function to specifically see what has changed line by line since the last commit
- `git add -p`: patch add in case you make a bunch of changes to a file at once, you can selectively only add parts of the updates to the next commit.

Might not need since there is more to come and this was the warmup.


## Recap

First of all, congratulations 🎉!
You just learned how to initialize a `git` repository and make a few commits.
You are off to a new future of version control!
No more worries about losing code or transferring.
In the next section you are going to learn about GitHub.
You will learn how to connect your GitHub account to your terminal and save all your commits on GitHub.

<!-- Need to either have a nice summary can be after the next to sections, or provide a touch more say, adding like two or three commits and showing them how to got back to check old ones -->

<!-- ## Homework
Something about setting up a repo and 

## Additional Resources:

[fireshipio](https://youtu.be/HkdAHXoRtos "Fireshipio: Git and Github")
-->



[cli]: {% post_url /series/cli/2022-10-10-bash %}
[install]: {% post_url /series/git/2022-10-05-git-installation %}
[markdown]: {% post_url 2022-10-03-markdown %}