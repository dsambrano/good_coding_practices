---
layout: post
title: "So whats the deal with GitHub/Gitlab"
date: 2022-10-03
author: Deshawn Sambrano
tags: Coding Git GitHub
time: 10
category: git
series: git
draft: true
usemathjax: true
diff: intermediate

---

{% include sidebar.html %}

<section class="takeaways">

In this post you will learn the basics of GitHub. By the end you will know: 
- How to set up a Git repository on GitHub to store changes
- How to pull content from a GitHub repo and continue editing it
- How to collaborate with any other scientist using GitHub solving basic merge conflicts

Prerequisites:
- None; though it may be helpful to skim through the [Command Line (Bash/zsh)][cli] post first, especially if you do not know how to use the terminal or how to use a bash. 

</section>



## How Does GitHub/GitLab Factor Into all of This?

<!-- excerpt-start -->
GitHub and GitLab (an open source alternative) are primarly used (for scientific programming) as remote (i.e., cloud-based) repositories/server/storage location. 
Both GitHub and GitLab have several nice helpful features to make developers communicate and interact with one another more and encourage collaboration etc. 
However, as I meantioned most of the time, when you start out, you will only use them as repos (repositories) to store your own code, or as a way to find other people's code.
<!-- excerpt-end -->
> Microsoft bought Github in 2018 and there was a thing in which Microsoft without the knowledge of its users took thousands of repos and used them to develop and AI so if you hear arguments about it this plus Microsoft's general disdain for Open Source Software are the two reasons why. 


Once you have made a GitHub/GitLab account and authorized yourself on your machine, you will be able to add a remote destination (i.e., your GitHub/GitLab account page) to push (via `git push`) all the commits you have made. 

The `git push` commands simply send all the changes that you made locally on your computer to the remote server. 
That way you always have a backup in case something goes wrong with your computer, WAHOO!!

Very commonly, you may need to download either someone else's code or your own code (to a new computer). 
In order to do this, you need the `git clone` command. 
This will clone the repo to your local machine, and importantly, it will also download all the changes that were ever made, so you have a full history of the project. 

## Why Can't I Just Use DropBox? Why do I ***Need*** Git/GitHub?

At this point, you might be wondering, ok, if GitHub just adds cloud storage to `git`s version control abilities why can't I just use DropBox or Google Drive. 
What does the `git`/GitHub combo add that I couldn't just get from these resources. 

This is kinda like saying why doesn't a surgeon use a knife instead of a scalpel.
Sure a knife can do a lot of the job, but they are designed for different things. 
DropBox/Drive are general purpose storage tools (like a knife) while git is specifically designed for writing code. 
That being said, let's highlight specific examples: 
1. While you do get some history of a file on both platforms, neither provides any information about what is different between the different versions. So you would need to remember what changes you personally made on April 23, 2022 at 4:00 pm compared the April 23, 2022 at 4:15 pm. First of all there is no chance that you remember what was different. In contrast, with git you have all the information stored with a message for every commit made. 
2. But let's pretend you have an insane memory and actually do remeber a general gist of what was different. You still won't find the specific differences without opening both files and comparing them. Again, with git, you have a single command to see all the changes made to that file. They can also be easier viewed view GitHub/GitLab. 
3. Git does Delta changes meaning that it uses a lot less resources in terms of network bandwidth, storage, and general computing resources. 
4. Similar to the previous example, This requires you to store all of the data. What if you computer doesnt have enough storage. Instead using Git and GitHub, you will only need to download and store the relevant components and you can delete them at any time to reclaim your storage. 
5. And perhaps the most relatable example is, when you want to change code (and you are using DropBox/Google Drive) what do you do. My bet, is that you comment out the old code and create the new code (that way if something breaks you can always go back). But what if something doesn't break right away. What if it takes a while to realize that this caused a problem. Are you just going to leave the old commented version in there for ever? If you do then you won't have very maintainable code, because the amount of comments are quickly going to explode. In constrast, with git, you just save the version as a commit make the changes, and if *anything* goes wrong, just rewind back to the problematic commit. 
6. You know every change that has ever happened to a file

Make it more clear when `git` is done a thing (version history/tracking all changes) vs GitHub.

Git
- version control/history
- you can work on the files at the same time

Github
- Future collabs don't require you to be active
- if another person sees an error they can fix it for you

## GitHub Example

Of course, you need to have a GitHub/GitLab account for this to work.
They have similar structures, but I will specifically focus on GitHub in this tutorial.
So, head over to [GitHub][gh] or [GitLab][gl] and create your free account.

### GitHub Authorization

If you have not done so already, make sure you install `gh` the GitHub command line tools.
The are available in all the standard [package managers][packagemanager].
Below is an example for MacOS users with homebrew.

```bash
# Installs homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Installs git and github command line tools
brew install git gh
```

Alternatively, you can install the github command line tools from there [website](https://cli.github.com). 
Once done, you will need to authorize yourself.
This is a one time process and can be done with `gh auth login`.
Follow the on screen prompts to complete the autorization.
Here are some good default options for first timers.
- Account type: `GitHub.com`
- Prefered Protocol: `HTML`, reccomended for beginners, but `SSH` is great as well (my preference). Regardless of choice, make sure that you remember which one it will come up in the next section.
- `SSH` key (if applicable): leave default unless you are familiar with `ssh` keys.
- Authentication: `Login with web browser` You will need to copy the code in the terminal before accessing the link, holding control while pressing the link in the terminal should open it automatically. Login as usual and paste the code to authenticate, then read and accept the prompt.

Once you have completed the setup, you should have a screen that looks similar to mine (depending on your selected options of course).

<!-- ```
gh auth login 
``` -->
 
![](/assets/imgs/gh_auth.png)

Congrats🎉!
You have now successfully connected your terminal to your GitHub account.
Next we will learn how to link your local repo with your GitHub account so you can store all your changes.


<!--
### GitHub CLI Protocol

There are two methods to give yourself GitHub access via git. The first is `HTTPS` and the second is `SSH`. 
These are two security protocols (details on `SSH` in a future post), but it doesnt really matter which one you pick, but you have to know which one you are using because there are some slight changes depending on which on you choose. 
I personally use `SSH`, but again it doesnt matter.
-->

### GitHub Repo Setup

The easiest way to get started is to first head over to [GitHub.com](github.com) and create a new repository by clicking the `+` in the top right:

![](/assets/imgs/gh_add_repo.png)

When you create a new repo on Github you will be prompted with the following options. Fill them as needed until you get the next section. 

![](/assets/imgs/gh_p1.png)

Here we don't need to add a `README.md`, `.gitignore` or `license`, if you did you can restart to follow along or follow the [git clone][git-clone] section.
Once you click create repository, then you will see the follow screen. 

![](/assets/imgs/gh_p2.png)

As you can see there are a few options, first and most important, you need to select your protocol either `HTML` or `SSH` based on what you selected in the [authorization][authorization] section.
Make sure you selected the correct one, because it will change the url.

Next you can see there is an option for creating a new repo and one for pushing an existing repo.
Basically, if you already ran `git init` on a repo that you want to upload to GitHub, use the second one, if not, use the first.


Following these prompts are pretty straight forward, but I do want to highlight what each line is doing, so you do not need to follow them each time. (Note that the final 3 lines are equivalent across both options):

- The `echo` line creates a `README` file with a title header.
- Next we had the `git init` which initializes a repo as we did in [Taking Git for a Test Drive][git-example]. 
- Next we are asked to add the `README` file and `git commit` again, just like in [Taking Git for a Test Drive][git-example].
- Afterwards it uses the `git branch -M main` to rename to current branch to `main` which is the default branch naming scheme for GitHub (not required if you already add this to your config when warned). 
- Then, we use `git remote add` to add the newly created GitHub repo as the remote repo for this project, and we give it a nickname called `origin`. 
- Finally, we push the all local commits with `git push` to the new GitHub repo, and the `-u orign main` option/arguments tell `git` to always use this particular GitHub repo for this branch. 

>**Hint**: You can actually store different branches on different repos (or the same repo, which is the most common).

When you complete all the commands you should be able to refresh GitHub and to see your repo. 

![Completed GitHub Repo](/assets/imgs/gh_p3.png)


Congrats🎉!
You successfully uploaded your repo to GitHub, now anytime you want to upload all your commits you simply need to use the `git push` command to send all your changes to the remote repo.
I typically do this once at the end of the day, so I make a bunch of commits throughout the day and then upload them all at once, but that make very depending on the needs of the project or if I am collaborating with someone who would constantly need the most up to date version.

### GitHub Clone Repo

The other common thing that will happen, is you need to get someone else's code (either for a collaboration or just because its freely available to help solve your problem) or your own on a new computer.
This can be done with `git clone`, which as the name implies, clones the repo from GitHub to your local computer.
Importantly, it also downloads all the history so you can view and if they ever make any changes you can also have access to them with `git pull`, to pull the changes down from the server.
`git pull` is basically the opposite of `git push`. `git push` sends local changes to the remote and `git pull` retreives any changes on the remote repo to your computer.

Let's see an example.
I am going to have you 

To gain practice with these skills, let's go through an example.
First we need to clone the repo.
For simplicity, I am going to place these repos next to each other in a `git_repos` directory.

```
git_repos/
├── my_first_git_project # The original repo
└── git_workshop # The clone from GitHub
```

To actaully clone the repo, first you need to cd to the directory wher you would like to keep the repo.
In this case that would be `git_repos`.
Then we need to type

```bash
git clone GIT_REPO_URL
```

To get the `GIT_REPO_URL` you can go to GitHub and click the green `code` button.
Make sure you click your preferred protocol (either `HTML` or `SSH`), for the proper url.

![Git Clone Example](/assets/imgs/gh_clone.png)

So with this example, it would be:

```bash
# Only choose 1 of the following options
git clone https://github.com/dsambrano/git_workshop.git # For HTML
git clone git@github.com:dsambrano/git_workshop.git # For SSH
gh repo clone dsambrano/git_repos # Is a third option using the GH CLI
```

Now you should have the same repo in two locations.
For our purposes, this will simulate you on two different computers (either the office and home or your computer and the experiment pc) or it can simulate you and a collaborator working on the same code.
Next we can demonstrate how to share changes across the "two" computers.

Start by opening one of the repos, I'll open the new one downloaded from GitHub.
And we need to edit a file, I will edit the `goodbye.txt` replace the only line with `Thank you for participating! Have a great day!`.
Then of course, we need to use `git add` to add the file and `git commit` to commit the changes.
Again, `git commit` only stores the changes locally, now we can use `git push` to send the to the cloud.

Next we will move back to the other repo (the original one) and make a change to the `instructions.txt` file adding `Welcome` to the first line.
Again, we will add and commit these changes, but if we try to push we will see this error.

![Push Error](/assets/imgs/gh_error.png)

This error is telling us that we tried to update the main GitHub repo, but our current files are out old.
So, to fix this we must first pull down the changes from the remote repo (`git` will automagically integrate them with the changes we already made), then we can push all of the changes back up the GitHub.

![GitHub Pull and Push](assets/imgs/gh_pl_push.png)

Now, our collaborator (the new repo) can `git pull` to also incorporate the changes, so that everyone has the most up to date things.
This is how you can easily collaborate with others or yourself (on different machines) and make sure every machine always has the most up to date versions of every file.
No need to using a flash drive or sending google drive links, or even sending emails updating them with the changes.
Whenever they are ready to incorporate the changes all the have to do is run `git pull` and if they are working on something, they can just hold off.
All this comes from the magic of `git` keeping track of exactly what lines in what files have been changed.
When different lines have been altered `git` intellegently integrates these changes.
But what happens when two people edit the same line?
How does `git` handle these situations.
When two people edit the same line of a file, `git` informs the developer that there was a conflict when it tried to merge the two verions.
It will never remove or edit things, unless you tell it to, so you have to resolve the conflict.


#### Merge Conflicts

Merge conflicts occur when you are trying to update code that someone else has already updated.
Because of this, `git` is not sure which is the correct version, so it asks you to fix it.
Let's simulate a merge conflict so we can see them in action, and you can learn how to resolve them.

Just like before we are going to use the two repos to simulate two different computers.
But this time, instead of editing two different lines, we are going to edit the same line.
Specifically, I will change the first line of the instructions to say `Hello from the OG repo` in the original and `Hello from the Clone` from the cloned repo.

> Hint: If you want to try something new, you can actually edit files directly from GitHub.
When in a GitHub repo you can press `.` to get access to the Visual Code Studio IDE. 
From there you can make all the changes you want and save them with a message, just like you would if you were using VCS from your local computer.

Now when I pull down the changes, I will get a merge conflict.

![GitHub Merge Conflict](assets/imgs/gh_merge_conflict.png)

As the error message indicates, we can either ... or ...
You can also run `git status` to get some more information on the problematic file/files.
Here, you can see it was the instructions file.
And if we open that file up for editings we can see that `git` helpfully altered the file to let us know what the problemactic line(s) were.
Here is specifically what mine looks like.

## Recap

First of all, give yourself a pat on the back, you just learned how to use GitHub to collaborate with others and remotely store your coding projects.
Combine that with the skills you learned in the previous post you have a great foundation.
If you were going through this series just to get the basics of `git` and GitHub, you know them now and can effectively use `git` and GitHub.
However, if you are looking for a little more, you can check out the rest of the series where I cover Branches, reviewing previous commits and more!
Also before you go, below are some tips on common mistakes and advanced GitHub topics and extra practice.
Check them out before heading to the next post.

### Extra Practice

Its really important you implement your new skills.
This is why I had you go through all the examples along side the tutorial.
To get even more practice, I reccomend taking one of your existing projects and initializing it as a git repo and upload it to GitHub.
I want you to take one of your projects and initialize it as a git project and store it remotely.
This can be as a private repo, if you want, but just getting the practice to have everything stored with an extra backup is a good idea.

### Advanced Topics in GitHub

We covered a lot today, thankfully, that was the most important things you need. 
However, there are a few advanced topics that I do think are useful to know, even though you might not use them a bunch:
- Fork: A fork is when another person takes your existing projects and adds their own spin or flavor on top and then stores it on their own repo. However, unlike a `clone` any changes that made to the fork will not affect the origial project.
- Pull Request: This is a mechanism to allow either other team members or other developers to update your code and merge it with the main branch even though they may not be associated with the project. They are requesting that you pull the changes they made into your main repo. Not very common in Scientific programming but will come up if you explore general software engineering.

Looking for more on the `git`/GitHub, you can check out this video from [fireshipio][fireshipio].



[cli]: {% post_url /series/cli/2022-10-10-bash %}
[markdown]: {% post_url 2022-10-03-markdown %}
[git-example]: {% post_url series/git/2022-10-10-git-example %}
[packagemanager]: /future_links

[gh]: https://github.com/join "GitHub Signup"
[gl]: https://gitlab.com/users/sign_up "GitLab Signup"
[git-clone]: #github-clone-repo
[authorization]: #github-authorization
[fireshipio]: https://youtu.be/HkdAHXoRtos "Fireshipio: Git and Github"
