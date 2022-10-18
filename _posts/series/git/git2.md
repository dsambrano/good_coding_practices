title: Taking Git to the Next Level



---
need to add infor about the `.gitignore`

---

### Git Banches and Merging


---
Now that we have 

edit file
add and commit it
`git checkout -b dev`
update file
`git checkout main`
update file different line and commit
`git merge dev`
no conflicts 
then repeat but the same line and resolve the conflicts

---



## Common Errors and Hiccups
- Initalizing a git repo on your whole Computer (or your home directory `~`)
- Trying to download a HTML file from GitHub 


## Advanced Topics in Git
We covered a lot today, thankfully, that is most of the important things you need. 
However, there are a few advanced topics that I do think are useful to know, even though you might not use them a bunch:
- `.gitignore`: I use this the most on the list. This allows you to tell git to ignore specific files. This is super useful if you have a file that contains any sensative information (e.g., SECRETE_KEYS, Identifiable Subject data, etc.). 
- `git diff `: a function to specifically see what has changed line by line since the last commit
<!-- - Branches: These are when you take your existing project and have a seperate timeline for it. This is super useful to make a branch if you are going to make a major change to it that might break things. Need example -->
- `.gitattributes`: modern replacement for `gitignore`: Probs should find that post again

## Homework
Something here about branches practice and merges. and revert back to previous state.


## Additional Resources:

[fireshipio](https://youtu.be/HkdAHXoRtos "Fireshipio: Git and Github")



[cli]: {%link _posts/series/cli/2022-10-04-bash.md %}
[markdown]: {%link _posts/2022-10-03-markdown.md %}
