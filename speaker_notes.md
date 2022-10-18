## Misc that I want/need to bring up

### Setting the stage 
- This workshop will be like spongebob episode. For every episode there are a bunch of jokes for the kids but there are equally as many for the adults, that go right over the kids heads. Similarly some of you have way more experience eitehr with git or just coding in general and my solution to make sure everyone gets stuff out of this is workshop is to follow the spongebob method. I am going to sprinkle stuff in hear and if you get it and it makes sense to you feel free to implement it yourself. If it feels like its goes way over your head thats fine too. You can always either ask or follow up with the written version of this workshop. 
- So I will start with a few minutes just giving a high level overview of what Git and Github are and just shoving in a few tips and then the majority of this will be a live workshop where I expect you all to follow along. I recognize that you are all at different levels so we are going to start this sectoin with a super basic overview of the terminal 
- Lastly, there are GUI tools for what I am going to show you, but I don't use them so I wont teach you those. You are more then welcome to explore them afterwards, but I expect this to still be helpful to you because 
- Make sure all users have GH accounts and Windows uses have git bash and gh cli. Mac users need brew. 
 - ### My reccomended Git Repo Setup for Scientific projects
 - branches/checkout
 - merges (edit line 12 on a branch and 72 on b branch then merge and show they are all good) (maybe do another with gh and hao to so I can show how they are basically the same on github) / merge conflicts
 - `.gitignore `
 - Using it with reproducibility
 - revert to previous commits
 - open vscode from github with .
 - how to properly and improperly download a file from github



Activities: 
- what are you hoping to gain from this workshop
- Collaboration project for them (groups each resolve one issue with the code and merge back into may repo) 

Sprinked in Tips:
- set default app and teach them `open` as a shortcut
- development.md
- `.gitignore ` [.RHistory, __pycache__, plus any secrets you might have]
- set up a project structure template
```
project_template/
  |-- analyses/
      |-- plots/
  |-- expriment/
      |-- data/
  |-- lit_review/
  |-- supporting_docs/
      |-- scales/
      |-- irb_docs/  
  |-- DEVELOPEMENT_DECISIONS.md
  |-- README.md
```

## git example

### basics
git init (first on empty and then we can do it on a project that is not empty)

Now lets add some stuff: we will make a file with touch README.md and here is a little trick to help improve your productivity 
- need to explain both .md and readme meaning
