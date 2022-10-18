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
Git often seems super scary, so let me just start by saying that 90% of the time you will only use the following three commands. 

```
git add .
git commit -m "Relevant Message Describing Changes"
git push
```

And if you are feeling fancy and want more coverage, adding these three commands will cover 99% of what you need in scientific settings:

```
git init
git clone
git status
```

If, for whatever reason, you are still scared off, there are GUI options to take advantage of the uses of git. 
I won't cover them here; however, this blog will still be useful for you as I will cover the structure of git and help you understand what is happening at a high level. 

## What is Git?
Git is a Version Control System. 
Thats all, its sole purpose is to help you (pontentially from your self). 
And speaking from personal experience, getting comfortable with these commands has saved me from hours of headache. 

Here are a few examples of things that it can save you from:
- When you try to improve your codes performance or readbility and somehow everything stops working. 
- Save you from the hell of having multiple versions of a file, all of which are named `experiment_FINAL_WORKING.py` or `experiment_FINAL_THISONE.py`
- Prevent the issue of having different versions on different computers
- All easy collaboration on coding files allowing everyone to edit the same file and merge all the changes when it is convenient. 
- Have a history of all the changes to revert back to a point when the code was working. 

### Story Time 

One time I had a very large project (totally several thousand lines of code all together across maybe 10 or so files). 
The project was fully functional but is was not very fast (in fact it was quite slow) and it wasn't documented very well. 
As a result, I decided to fix both problems. 
I started working on improving both issues and after a couple days I noticed that the code broke. 
But I had no idea how or why it stopped working. 
Now if I wasn't using git, I would have been screwed. But luckily, all I had to do was revert back to the previously working commit and I had a fully working version. 



### Git Stages?
There are 3(4?) basic stages of git. And a file can be in any of these stages. 
![Stages of Git](imgs/git_stages.png)

- `Untracked`: The first and easiest to understand is `Untracked` this is simply a file that you have specifically told git to ignore/not track any changes.
- `Unmodified`: These are files that you asked git to track but they have not changed since you last made a commit (i.e., a checkpoint).
- `Modified`: These are also files you asked git to track, but these have changed since the last commit.
- `Staged`: Finally, you have files that you have told git to track, made changes to these files, AND you have already added them to the queue (via `git add FILENAME`) and are waiting for the commit and message (via `git commit -m "REALLY IMPORTANT MESSAGE"`). Once you have committed the changes, all staged files are now officially `unmodified`. Then the cycle continues. 

### Why Can't I Just DropBox (or Google Drive)? Why do I Need Git?

At this point, you might be wondering, ok, if git just adds version control abilities why can't I just use DropBox or Google Drive. 
What does Git add that I couldn't just get from these sources. 

This is kinda like saying why doesn't a surgeon use a knife instead of a scalpel.
Sure a knife can do a lot of the job, but they are designed for different things. 
DropBox/Drive are general purpose storage tools (like a knife) while git is specifically designed for writing code. 
That being said, let's highlight specific examples: 
1. While you do get some history of a file on both platforms, neither provides any information about what is different between the different versions. So you would need to remember what changes you personally made on April 23, 2022 at 4:00 pm compared the April 23, 2022 at 4:15 pm. First of all there is no chance that you remember what was different. In contrast, with git you have all the information stored with a message for every commit made. 
2. But let's pretend you have an insane memory and actually do remeber a general gist of what was differnt. You still won't find the specific differences without opening both files and comparing them. Again, with git, you have a single command to see all the changes made to that file. They can also be easier viewed view GitHub/GitLab. 
3. Git does Delta changes meaning that it uses a lot less resources in terms of network bandwidth, storage, and general computing resources. 
4. Similar to the previous example, This requires you to store all of the data. What if you computer doesnt have enough storage. Instead using Git and GitHub, you will only need to download and store the relevant components and you can delete them at any time to reclaim your storage. 
5. And perhaps the most relatable example is, when you want to change code (and you are using DropBox/Google Drive) what do you do. My bet, is that you comment out the old code and create the new code (that way if something breaks you can always go back). But what if somehting doesn't break right away. What if it takes a while to realize that this caused a problem. Are you just going to leave the old commented version in there for ever? If you do then you won't have very maintainable code, because the amount of comments are quickly going to explode. In constrast, with git, you just save the version as a commit make the changes, and if *anything* goes wrong, just rewind back to the latest commit. 

### Git Example Time

#### Installation
First double check if you have git installed already via typing `git -v` in your terminal. 
If you get a command not found error then you don't have it install if it spits out a version then you are good to go (though you may need to update it) 
_________________
##### Mac OS

Many scientific applications requires `xcode` on Mac which install `git` automatically so you might have it. 
Double check by using the method described [above](####installation). 
If you don't that's ok because you will definitely need it in the future. 
Inside your terminal type the following command:
```
xcode-select –install
```

If you know what homebrew or MacPorts are you can install them via these methods as well. 

Finally, you can use the GUI installer go the [Binary installer section](https://git-scm.com/download/mac)

##### Linux
On most linux distros you can simply use the relavent package manager to install git. 
For example on debian based distros:
`sudo apt install git-all`

##### Windows

You can install git via `chocolately` or the [GUI installer](https://git-scm.com/download/win)
_________________

Now we will follow a super basic example to `git` (pun intended) an understanding. 
First let's set up the following directory structure. 
Each of the text files should only contain 1 line of text what is just the same as the name of the file without and extension. 
So the `hello_world` file can just be have the content `Hello World`. 

```
my_first_git_project/
  |-- hello_world.txt
  |-- goodbye.txt
```

Next we need to create a `README.md` file. These are super important and as the name implies you should alwasy read this before using some software/code you get online.

>**Hint**: This also means that you should always make a readme file anytime you make a project. 

In this file you will find basic information about how to setup/configure and run the code that you download. 
It also often describes the basic functionality of the code as this is the first thing anyone will see about the project. 
On GitHub/GitLab. 
For our purposes since this is a basic project you can just add the level 1 header and a 1 line description.
```
# My first Git Repo

Learning the basics of the a Git!
```

## How Does GitHub/GitLab Factor Into all of This?
GitHub (and GitLab an open source alternative) are primarly used (for our level of programming) as remote (i.e., cloud-based) repositories/server/storage locations. 
GitHub used to be open source but was bought out by Microsoft and no longer is (there was also a thing in which Microsoft without the knowledge of its users took thousands of repos and used them to develop and AI so if you hear arguments about it these are the two reasons why). 
Both GitHub and GitLab have several nice helpful features to make developers communicate and interact with one another more and encourage collaboration etc. 
However, as I meantioned most of the time, you will simply use them as only repos (repositories) of your own code or as a way to find other people's code. 

Once you have made a GitHub/GitLab account and authorized yourself on your machine, you will be able to add a remote destination (i.e., your GitHub/GitLab account page) to push (via `git push`) all the changes and commits you have made. 

The `git push` commands simply send all the changes that you made locally on your computer to the remote server. 
No you always have a backup in case something goes wrong with your computer, WAHOO!!

Very commonly, you will need to download either your own code (to a new computer) or download someone else's code. 
In order to do this you will use `git clone URL TO THE REMOTE REPO`. 
This will clone the repo to your local machine, and importantly, it will also download all the changes that were ever made, so you have a full history of the project (reference back to story time). 

### GitHub Example

#### GitHub Setup
 There are two methods to give yourself GitHub access via git. The first is HTTPS and the second is SSH. These are two security protocols (details on SSH in a future post), but it doesnt really matter which one you pick, but you have to know which one you are using because there are some slight changes depending on which on you choose. 

## Common Errors and Hiccups
- Initalizing a git repo on your whole Computer (or your home directory `~`)
- Trying to download a HTML file from GitHub 


## Advanced Topics in Git
We covered a lot today, thankfully, that is most of the important things you need. 
However, there are a few advanced topics that I do think are useful to know, even though you might not use them a bunch:
- `.gitignore`: I use this the most on the list. This allows you to tell git to ignore specific files. This is super useful if you have a file that contains any sensative information (e.g., SECRETE_KEYS, Identifiable Subject data, etc.). 
- `git diff `: a function to specifically see what has changed line by line since the last commit
- Branches: These are when you take your existing project and have a seperate timeline for it. This is super useful to make a branch if you are going to make a major change to it that might break things. Need example
- Fork: A fork is when another person takes your existing projects and adds their own spin or flavor on top and then stores it on their own repo. 
- Pull Request: This is a mechanism to allow either other team memebers or other developers to update your code and merge it with the main branch. 


## Homework
I want you to take one of your projects and initialize it as a git project and store it remotely. 
This can be as a private repo if need be
