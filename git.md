## Takeaways

[Estimated Read Time 20 mins]

In this blog you will learn the basics of Git and GitHub/GitLab:
- By the end you will know the 4 stages of the git process
- All the commands relevant to initalizing and working with a git project
- Set up your first Git repository
- Set up your first online repository (via either GitHub or GitLab)
- Be able to collaborate with any other scientist using Git

Prerequisites:
- None; though it may be helpful to skim through the [Command Line (Bash/zsh)](cli.md) post first, especially if you do not know how to use the terminal or how to use a bash command 

# You Only Need to Know 3 Commands
Git often seems super scary, so let's me just start by saying, for 90% of the time, you will only use the following three commands. 

```
git add .
git commit -m "Initial Message"
git push
```

And if you are feeling fancy and want more coverage, adding these three commands will cover 99% of what you need in scientific settings:

```
git init
git clone
git status
```

If, for whatever reason, you are still scared off, there are GUI options to take advantage of the the uses of git 

## What is Git?
Git is a Version Control System. Thats all, its sole purpose is to help you. And speaking from personal experience, if you get comfortable with these commands it has saved me from hours of headache. 
Story Time: 



### Git Stages?
There are 3(4?) basic stages of git. And any final can only be in one of them. 
![Stages of Git](imgs/git_stages.png)

- `Untracked`: The first and easiest to understand is `Untracked` this is simply a file that you have specifically told git to ignore/not track any changes.
- `Unmodified`: These are files that you asked git to track but they have not changed since you last made a commit (i.e., a checkpoint).
- `Modified`: These are also files you asked git to track, but these have changed since the last commit.
- `Staged`: Finally, you have files that you have told git to track, made changes to these files, AND you have already added them to the queue (via `git add FILENAME`) and are waiting for the commit and message (via `git commit -m "REALLY IMPORTANT MESSAGE"`). Once you have committed the changes, all staged files are now officially `unmodified`. Then the cycle continues. 

### Git Example Time

#### Installation
First double check if you have git installed already via typing `git -v` in your terminal. If you get a command not found error then you don't have it install if it spits out a version then you are good to go (though you may need to update it) 
_________________
##### Mac OS

Many scientific applications requires `xcode` on Mac which install `git` automatically so you might have it. Double check by using the method described [above](####installation). If you don't that's ok because you will definitely need it in the future. Inside your terminal type the following command:
```
xcode-select –install
```

If you know what homebrew or MacPorts are you can install them via these methods as well. 

Finally, you can use the GUI installer go the [Binary installer section](https://git-scm.com/download/mac)

##### Linux
On most linux distros you can simply use the relavent package manager to install git. For example on debian based distros:
`sudo apt install git-all`

##### Windows

You can install git via `chocolately` or the [GUI installer](https://git-scm.com/download/win)
_________________

Now we will follow a super basic example to `git` (pun intended) an understanding. First let's set up the following directory structure. Each of the text files should only contain 1 line of text what is just the same as the name of the file without and extension. So the `hello_world` file can just be have the content `Hello World`. 

```
my_first_git_project/
  |-- hello_world.txt
  |-- goodbye.txt
```

Next we need to create a `README.md` file. These are super important and as the name implies you should alwasy read this before using some software/code you get online.

>**Hint**: This also means that you should always make a readme file anytime you make a project. 

In this file you will find basic information about how to setup/configure and run the code that you download. It also often describes the basic functionality of the code as this is the first thing anyone will see about the project. On GitHub/GitLab. For our purposes since this is a basic project you can just add the level 1 header and a 1 line description.
```
# My first Git Repo

Learning the basics of the a Git!
```

## How Does GitHub/GitLab Factor Into all of This?
GitHub (and GitLab an open source alternative) are primarly used (for our level of programming) as remote (i.e., cloud-based) repositories/server/storage locations. GitHub used to be open source but was bought out by Microsoft and no longer is (there was also a thing in which Microsoft without the knowledge of its users took thousands of repos and used them to develop and AI so if you hear arguments about it these are the two reasons why). Both GitHub and GitLab have several nice helpful features to make developers communicate and interact with one another more and encourage collaboration etc. However, as I meantioned most of the time, you will simply use them as only repos (repositories) of your own code or as a way to find other people's code. 

Once you have made a GitHub/GitLab account and authorized yourself on your machine, you will be able to add a remote destination (i.e., your GitHub/GitLab account page) to push (via `git push`) all the changes and commits you have made. 

The `git push` commands simply send all the changes that you made locally on your computer to the remote server. No you always have a backup in case something goes wrong with your computer, WAHOO!!

Very commonly, you will need to download either your own code (to a new computer) or download someone else's code. In order to do this you will use `git clone URL_TO_THE_REMOTE_REPO`. This will clone the repo to your local machine, and importantly, it will also download all the changes that were ever made, so you have a full history of the project (reference back to story time). 

### GitHub Example

## Common Errors and Hiccups
- Trying to download a HTML file from GitHub 
- 

## Advanced Topics in Git
We covered a lot today, thankfully, that is most of the important things you need. However, there are a few advanced topics that I do think are useful to know, even though you might not use them a bunch:
- `.gitignore`: I use this the most on the list. This allows you to tell git to ignore specific files. This is super useful if you have a file that contains any sensative information (e.g., SECRETE_KEYS, Identifiable Subject data, etc.). 
- `git diff `: a function to specifically see what has changed line by line since the last commit
- Branches: These are when you take your existing project and have a seperate timeline for it. This is super useful to make a branch if you are going to make a major change to it that might break things. Need example
- Fork: A fork is when another person takes your existing projects and adds their own spin or flavor on top and then stores it on their own repo. 
- Pull Request: This is a mechanism to allow either other team memebers or other developers to update your code and merge it with the main branch. 


## Homework
I want you to take one of your projects and initialize it as a git project and store it remotely. This can be as a private repo if need be
