## Takeaways

[Estimated Read Time 20 mins]

In this blog you will learn the basics of Git and GitHub/GitLab:
- By the end you will know the 4 stages of the git process
- All the commands relevant to initalizing and working with a git project
- Set up your first Git repository
- Set up your first online repository (via either GitHub or GitLab)
- Be able to collaborate with any other scientist using Git

Prerequisites:
- None; though it may be helpful to skim through the [Command Line (Bash/zsh)](cli.md) post first.
  
## Reproducible Code

### Freeze a Packages!
```
pip freeze > requirements.txt
```

```
pip install -r /path/to/requirements.txt
```

### Virtual Environments


## Type Hints


## Exceptions:

An [exception][e1] is a point in the code where an error occured.
All exceptions have a description of what when wrong as well as a `Traceback` of where the exception was encountered. 
There is a list of common exceptions as well as the hierarchy is on the [python website][e2]
Some common exceptions include:
- `SyntaxError`: As described, you messed up the syntax. You will get this a lot when starting out.
- `ValueError`: When the value is incorrect like square rooting a negative number.
- `FileNotFound`: You guessed it, either the file does not exist ***OR*** you spelled it wrong. 
- `TypeError`: You used the incorrect type, like adding strings and integers.
- `IndexError`: Index outside the range of the array. 

Whenever possible you should use the builtin [exceptions][e2] but you can create you own custom ones when necessary. 

To use exceptions in your code you want to mimic the following structure:

```python
try:
    # code that will be attempted first
except e as ValueError:
    # Code that will run when the specific expection is encountered, you can have multiple of these to handle different exceptions differently. 
else: 
    # Additionally code that should be run if it is successful
finally: 
    # Addition code that should be run regardless if it encountered an exception or not.

```


## References

[1]: https://youtu.be/woIkysZytSs "Arjan Codes: 8 Python Coding Tips - From The Google Python Style Guide"

### Exceptions

[e1]: https://youtu.be/nlCKrKGHSSk "Socratica: Exceptions"
[e2]: https://docs.python.org/3/library/exceptions.html#exception-hierarchy "Python Exception Hierarchy"
[e3]: https://youtu.be/6tNS--WetLI "Corey Schafer: Long Run Unit Testing Tutorial"
