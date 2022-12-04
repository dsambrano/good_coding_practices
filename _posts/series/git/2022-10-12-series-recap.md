---
layout: post
title: "Why do I Need Git/GitHub? Why not DropBox?"
date: 2022-12-07
author: Deshawn Sambrano
tags: Coding Git GitHub
time: 7
category: git
series: git
draft: true
usemathjax: false
diff: intermediate

---

{% include sidebar.html %}

<section class="takeaways">

In this post you will learn the differences between GitHub and DropBox / Google Drive.
By the end you will:

- Learn how GitHub differs from DropBox / Google Drive
- Know why you should choose one over the other
- Learn some basic tips for creating a good repo

Prerequisites:

- Have read through my series on the [basics of `bash`][cli] or have a general understanding of how to move around edit files in `bash`
<!--- None; though it may be helpful to skim through the [Command Line (Bash/zsh)][cli] post first, especially if you do not know how to use the terminal or how to use a bash.-->

</section>


## Why Can't I Just Use DropBox? Why do I ***Need*** Git/GitHub?

<!-- excerpt-start -->
At this point, you might be wondering, "*ok, if GitHub just adds cloud storage to `git`'s version control abilities why can't I just use DropBox or Google Drive.
What does the `git`/GitHub combo add that I couldn't just get from these resources?*"

This is kinda like asking why doesn't a surgeon use a knife instead of a scalpel.
Sure a knife can do a lot of the job, but they are designed for different things.
DropBox/Drive are general purpose storage tools (like a knife) while `git` is specifically designed for writing code.
That being said, let's highlight specific examples/reasons for both.
<!-- excerpt-end -->


### Reasons for Git

One of the most relatable example is, when you want to change code (and you are using DropBox/Drive) what do you do.
My bet, is that you comment out the old code and create the new code (that way if something breaks you can always go back).
But what if something doesn't break right away.
What if it takes a while to realize that this caused a problem.
Are you just going to leave the old commented version in there for ever?
If you do, then you won't have very maintainable code because the amount of comments are quickly going to explode.
In contrast, with `git`, you just save the version as a commit make the changes, and if *ANYTHING* goes wrong, undo that commit or rewind back to before the issue occured.
You have peace of mind because you know you have every change that has ever happened to a file.

Additionally, while you do get some history for a file on DropBox/Drive, neither provides any information about what is different between the different versions.
So you would need to remember what changes you personally made on April 23, 2022 at 4:00 PM compared the April 23, 2022 at 4:15 PM.
There is obviously, no chance that you remember what was different.
In contrast, with `git` you have all the information stored with a message for every commit made, and with a single command, you know exactly what files and lines were specifically changed.


### Reasons for GitHub

DropBox/Drive have some mechanisms for multiple people editing a single file, but they don't work on all file types.
But the bigger issue is even if they did work for code files, having your code updated while you are trying to test things would be a horrible system.
Instead with GitHub, you can work on changes without them affecting anyone else, and only once your changes work, then you can send them for everyone to review.
When it comes to coding, this system is simply better.

GitHub is also extremely valuable for reproducible research.
Unlike with DropBox/Drive, you can quickly and easily find code for a project just by going to GitHub.
While you are there, you of course get all the benefits of git, so you know when things changed and for what reasons.
Additionally, since anyone can easily find a project's code, you don't have that awkward dance of finding the corresponding author's new email (because likely moved institutions) and asking for them to give you access (which can take forever for them to respond).
<!--This process can be probihitively costly in terms of the time investment.-->
In contrast, with GitHub you can simply go to their GitHub page and download the code.
It doesn't matter if they changed universities or if they you can't reach them by email, it is all there.
And if there are every any changes that can always `git pull` them down.

<!--
One of the primarly purposes for GitHub for scientific programming, is to have a remote repository for your project.
Of course DropBox/Drive can do this as well, but GitHub adds a few extra benefits that these don't.
First, GitHub was designed to work seemlessly with git.
So you have full access to all your repo's history in a easily viewable way.
In line with this, it has built in ways to allow people to make comments and changes to your code.

Additionally, if someone else needs to see your code and its on DropBox/Drive, you need to add their email to grant them access (of course sometimes there are mishaps and you don't give them full access so there is back and forth).
Now if this happens on a relatively recent project, you are likely to still have access to your email, but what if you moved and don't have that email anymore?
Or what if your extra storage was tied to the fact that you your DropBox/Drive was connected to your school account? Well then all the collaborators have to be moved over to still have access.

In contrast, on GitHub, your account is independent of your instituition, so you will always have access, so there is no need to deal with this headache.
And if someone else wants to download the code, they can just do it.
No need to ask you for permission they simpley find the repo (either from GitHub directly or from your publication) and download the repo.
No asking for permission and waiting for a response, which let's be honest is already outdated anyways, they just download it.
-->

To be clear, I am not saying you should never use DropBox/Drive, they have their use cases (you might even use DropBox/Drive in conjunction with GitHub).
I'm simply noting that, when it comes to code, `git`/GitHub were designed to handle this issues and are, by far, the clear best choice.

## Git Repo Tips

Before I end the series, I want to leave you with one final tip.
When I make a `git` repo, of course you will need a `README.md` file to let people know what is inside the repo and how to use it properly.
You typically want to include a general description of the project followed by a list of step you need to properly run the project.
This might include creating virtual environments, downloading dependencies, etc.
It might also contain relevent links, say to a website the code creates or the associated manuscript.
On GitHub, markdown files are shown by default, so this will serve as the greeting to people visiting your repo.

In addition to the `README.md`, I always make a `DEVELOPMENT.md` file as well.
In the `DEVELOPMENT.md` file, I include all the development decisions.
For example, why did I choose to work with this framework or that one?
Why did I choose XX trials instead of another amount, etc.
I also includes a bunch of links, so I can justify things in the future.
Finally, I also will include a to do list, through development, so I have a list easily veiwable.
I highly reccomend, you add both markdown files as well.


## Series Recap

First of all, give yourself a pat on the back, you just learned how to use GitHub to collaborate with others and remotely store your coding projects.
Combine that with the skills you learned in the previous post and you have a great foundation.
Going through this series you learned the basics of `git` and GitHub.
Now, you can effectively use `git` and GitHub to create reproducible science or start your journey as a software engineer.
<!--If you were going through this series just to get the basics of `git` and GitHub, you know them now and can effectively use `git` and GitHub.-->
<!--However, if you are looking for a little more, you can check out the rest of the series where I cover Branches, reviewing previous commits and more!-->
Also before you go, below is some extra practice to improve your skills and some advanced GitHub topics.
<!--Check them out before heading to the next post.-->


### Advanced Topics in GitHub

We covered a lot in the series.
Thankfully, this was the most important things you need for `git` and GitHub.
However, there are a few advanced topics that I do think are useful to know, even though you might not use them a bunch:

- Branch: A branch is a separate section of your code. This allows you try things out without affecting the main branch. You commonly with have a main branch, that always works, a dev branch for testing things and several feature branches each working on a specific feature. They are designed so as you are developing one new feature it does not mess up the main software tool.
- Fork: A fork is when another person takes your existing project's code and adds their own spin or flavor on top and then stores it on their own repo. However, unlike a `clone`, any `git push`ed changes that are made to the fork will not affect the origial project.
- Pull Request: This is a mechanism to allow either other team members or other developers to update your code and merge it with the main branch even though they may not be associated with the project. They are **requesting** that you **pull** the changes they made into your repo. Not very common in Scientific programming but will definitely come up if you explore general software engineering.

Looking for more on the `git`/GitHub, you can check out this video from [fireshipio][fireshipio].
Also feel free to check out this [cheatsheet][].



<!--REFERENCES-->

[gh]: https://github.com/join "GitHub Signup"
[gl]: https://gitlab.com/users/sign_up "GitLab Signup"
[myrepo]: https://github.com/dsambrano/git_workshop "GitHub Workshop Repo"
[myrepo-history]: https://github.com/dsambrano/git_workshop/commits/main "My GitHub Workshop Repo's History"
[gh-cli]: https://cli.github.com/ "GitHub Command Line Tools"

<!--FURTHER EXPLORATION-->
[fireshipio]: https://youtu.be/HkdAHXoRtos "Fireshipio: Git and Github"
[cheatsheet]: https://training.github.com/downloads/github-git-cheat-sheet.pdf "Git/GitHub Cheatsheet"

<!--INTERNAL-->
[git-config]: {{site.data.links["git"]["git-config"]}}
[cli]: {{site.data.links["series"]["bash-basics"]}}
[markdown]: {{site.data.links["general"]["markdown"]}}
[git-example]: {{site.data.links["git"]["git-example"]}}
[packagemanager]: {{site.data.links["general"]["package-managers"]}}
[example]: #github-example
[git-clone]: #github-clone-repo
[authorization]: #github-authorization
