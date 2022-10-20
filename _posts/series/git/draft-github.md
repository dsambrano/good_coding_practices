title: So whats the deal with GH/gitlab



## How Does GitHub/GitLab Factor Into all of This?
GitHub (and GitLab an open source alternative) are primarly used (for our level of programming) as remote (i.e., cloud-based) repositories/server/storage locations. 
GitHub used to be open source but was bought out by Microsoft and no longer is (there was also a thing in which Microsoft without the knowledge of its users took thousands of repos and used them to develop and AI so if you hear arguments about it these are the two reasons why). 
Both GitHub and GitLab have several nice helpful features to make developers communicate and interact with one another more and encourage collaboration etc. 
However, as I meantioned most of the time, you will simply use them as only repos (repositories) of your own code or as a way to find other people's code. 

Once you have made a GitHub/GitLab account and authorized yourself on your machine, you will be able to add a remote destination (i.e., your GitHub/GitLab account page) to push (via `git push`) all the changes and commits you have made. 

The `git push` commands simply send all the changes that you made locally on your computer to the remote server. 
No you always have a backup in case something goes wrong with your computer, WAHOO!!

Very commonly, you will need to download either your own code (to a new computer) or download someone else's code. 
In order to do this you will use `git clone URL-TO-THE-REMOTE-REPO`. 
This will clone the repo to your local machine, and importantly, it will also download all the changes that were ever made, so you have a full history of the project. 

### Why Can't I Just DropBox (or Google Drive)? Why do I ***Need*** Git?

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


### GitHub Example
If you did not install brew before it would be a good idea to do so now: 
```bash
# Installs homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Installs git and github command line tools
brew install git gh
```

but again, if you don't want to you can just install the github command line tools from there [website](https://cli.github.com). 
Once done you will need to set everything up with `gh auth login` and follow the on screen prompt

<!-- ```
gh auth login 
``` -->
 
![](/assets/imgs/gh_auth.png)


#### GitHub CLI Setup
There are two methods to give yourself GitHub access via git. The first is `HTTPS` and the second is `SSH`. 
These are two security protocols (details on `SSH` in a future post), but it doesnt really matter which one you pick, but you have to know which one you are using because there are some slight changes depending on which on you choose. 
I personally use `SSH`, but again it doesnt matter.

#### GitHub Repo Setup

When you create a new repo on Github you will be prompted with the following options. Fill them as needed until you get the next section. 
![](/assets/imgs/gh_p1.png)

Assuming you did not add a `README.md`, `.gitignore` or `license` then you will see the follow screen. 
![](/assets/imgs/gh_p2.png)

Following these prompts will get you set up, but I do want to highlight what each are doing so you don't need to follow them ever time. 
The `echo` line creates a `README` file with a title header.
Next we had the `git init` which initializes a repo, as we showed above. 
Next we are asked to add the `README` file and `git commit` it.
Afterwards it uses the `git branch -M main` to rename to current branch to `main` which is the default branch naming scheme for GitHub. 
Then, we use `git remote add` to add the newly created GitHub repo as the remote repo for this project, and we give it a nickname called `origin`. 
Finally, we push the all local commits with `git push` and the `-u orign main` option/arguments tell git to always use this particular GitHub repo for this branch. 

>**Hint**: You can actually store different branches on different repos (or the same repo, which is the most common).



## Common Errors and Hiccups
- Trying to download a HTML file from GitHub 


## Advanced Topics in Git
We covered a lot today, thankfully, that is most of the important things you need. 
However, there are a few advanced topics that I do think are useful to know, even though you might not use them a bunch:
- Fork: A fork is when another person takes your existing projects and adds their own spin or flavor on top and then stores it on their own repo. 
- Pull Request: This is a mechanism to allow either other team members or other developers to update your code and merge it with the main branch. 


## Homework
I want you to take one of your projects and initialize it as a git project and store it remotely. 
This can be as a private repo if need be


## Additional Resources:

[fireshipio](https://youtu.be/HkdAHXoRtos "Fireshipio: Git and Github")



[cli]: {% post_url /series/cli/2022-10-04-bash %}
[markdown]: {% post_url 2022-10-03-markdown %}
