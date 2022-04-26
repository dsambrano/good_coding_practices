# You Only Need to Know 3 Commands

```
git add .
git commit -m "Initial Message"
git push
```

90% of the time you will only ever use these three commands. For 99% coverage you need only add a few more:

```
git init
git clone
git status
```

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

## How Does GitHub Factor Into all of This?
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
- Branches: These are when you take your existing project and have a seperate timeline for it. This is super useful to make a branch if you are going to make a major change to it that might break things. Need example
- Fork: A fork is when another person takes your existing projects and adds their own spin or flavor on top and then stores it on their own repo. 


## Homework
I want you to take one of your projects and initialize it as a git project and store it remotely. This can be as a private repo if need be
