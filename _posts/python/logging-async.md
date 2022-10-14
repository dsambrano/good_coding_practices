---
layout: post
title:  "Best Practices in Python"
date: 2022-10-03
author: Deshawn Sambrano
tags: Coding Python Best-Practices 
time: 20
category: python
draft: true
usemathjax: true
series: false
diff: intermediate
#part_number: 1
#series-name: computational-modeling
---


{% include sidebar.html %}

<section class="takeaways">

In this post you will learn some best practices for coding in Python. By the end you will:
- Learn how write reproducible code that can be run on any machine
- Learn how f-strings work to make clean text in python
- Learn how to properly log and handle errors in your code 

Prerequisites:
- Basic/working knowledge of how to write python code. Does not need to be advance, as long as you know how to write and run a script.

</section>

## Reproducible Code

<!-- excerpt-start -->

Many of the keys to writing good code in python also mean you write reproducible code.
Why? Because
>Code is meant for HUMANS, not machines

So making sure you write good code means making sure you write code that you or others can read, understand, and edit your code without much hassle.
The better you get at that skill, the better coder you will become, but simultaneously, you will also have more flexible and reproducible code.
First we will start by making an environment that can be recreated so anyone can replicated your code on their machine.

<!-- excerpt-end -->

### Freeze the Packages!

The first step to reproduce some code, is to make sure that you have all the correct packages.
In python you can save all the packages that you are currently using along with the version numbers with the following command:

```bash
pip freeze > requirements.txt
```

This will save all the packages that are installed in your [current environment][ve] to a file called `requirements.txt`.
Then on a new system you can install all those packages into your environment with:

```bash
pip install -r /path/to/requirements.txt
```

But this solution won't work forever because one project might need `numpy 1.23.0`, while another one might need `0.97`.
To solve this issues you can use a [Virtual Environment][ve], which isolated all the installed packages into their own section so the dependencies don't affect one another.

### Virtual Environments

Virtual Environments are a mechanism used to prevent dependency issues across your python project. 
There are several tools for implementing virtual environments:

- [Anaconda environments][condaenv] with `conda create`
- [venv][] which is python's builtin method
- [virtualenv][] with [vewrapper][]
- [pipenv][]
- [pyenv][]

For beginners and data scientist, I would say [anaconda environments][condaenv] are the easiest to use.
So I would recommend using those, and switching to one of the others if the project needs it or you learn the basics because conda environments can take a lot of space and are quite heavy.

After installing (you can use homebrew `brew install --cask anaconda` or download from the [website][anaconda]), you can create a [`conda env`][condaenv] with the following command:

```bash
conda create -n NAME_OF_ENVIRONMENT python=VERSION_NUMBER
```

then you just activate the environment with:

```bash
conda activate NAME_OF_ENVIRONMENT
```

now everything that you install will be completely isolated from the rest of your python environments so you don't need to worry about dependency incompatabilities.
To leave the environment just use: 

```bash
conda deactivate
```

Using the builtin venv method is pretty common online for github projects, so I will show a basic example.

```bash
python3 -m venv NAME_OF_VIRTUAL_ENV # Creation
. NAME_OF_VIRTUAL_ENV/bin/activate # Activation
```

Now that you have a working (and active) virtual environment, you can install all the packages that you want, and they will not affect any other proejcts that you have

## f strings

When first learning how to handle strings in pythong you will likely learn the `%` sign strategy.
This is woefully outdated so as you progress you will soon learn the `.format` method, which was introduced in python `3.0`.
However this is also no longer the best way to deal with strings (and hasn't been for awhile).
The modern way to deal with strings in python are with [`f strings`][f1].
They are far more readable and allow flexability that is simiply not available in the other methods.

They are super simple to use. 
Anytime you have a string, you simply have to add a `f` to the beginning, then you can use there magic. 
To print a variable, you can simply place them inside curly braces `{}`. 

```python
numb = 3
txt = f"My favorite number is {numb}"
print(txt) # My favorite number is 3
```

As you can see, this is so much easier to read what is being expressed in the string.
But the fun doesn't stop here, you also get a ton of useful formatting feature as well.
For example, you can automatically [round numbers][f3] or even print [large numbers with commas][f4] to separate them for easier readability. 

```python
pi = 3.14159
# A colon indicates formating stuff: period indicates after the decimal
dec_txt = f"Pi is often rounded to two decimals: {pi:.2f}"
print(dec_txt) 👉️ 'Pi is often rounded to two decimals: 3.14'


# You can also use underscores to help clarify large numbers
million = 1_000_000
# And then have them printed with commas
mill_txt = f"I can count to {million:,}"
print(mill_txt) 👉️ I can count to 1,000,000
```

full details [below][f5]:

```python
f'{value:{width}.{precision}}'
```

where:

- `value` is any expression that evaluates to a number
- `width` specifies the number of characters used in total to display, but if value needs more space than the width specifies then the additional space is used.
- `precision` indicates the number of characters used after the decimal point

f-strings can do so much more for formatting and readability, but I will just highlight two more things. 
First you can run any python code inside the `{}` so you can do `f"{3+3}` to get "6" or `f"{'SAMPLE_TEXT'.lower()}"` to get `sample_text`.


The other neat feature is you can set things to be a certain [size][f2], so you van force a string to be surrounded by a character or white space to make sure that it reaches that length.
For example if you wanted to have a string that looks like `____hi____`, you could run:

```python
greet="hi"
print(f"{greet:_^10}") 👉️ ____hi____
```

Again, you can customize this by changing the `_` for example, if you wanted whitespace, you could delete that character or if you wanted `====hi====`, you could replace it with a `=`.
Similarly if you wanted the text flush left you could replace the `^` with `<` (`hi________`).
And as you might expect, using a `>` means that the text is flush right (`________hi`)

To summary, you can manipulate strings with this structure:

```python
f"{str:{fill}{justify}{length}}"
```
where:

- `str`: is the string you want to manipulate.
- `fill`: is the character you want to fill the empty space, leave black for whitespace.
- `justify`: is the direction you want justified: (for center use `^` for left use `<` for right use `>`).
- `length`: is the total length of the string after adding the `fill` character.


## Type Hints

Type hints are a tool that can be used in python to improve readability and expectations of code input and output for functions and classes. With type hints you specify the type each argument requires/expects as well as the expected output type. 

```python
def add(a: float, b: float=3) -> float:
    return(a + b)
```

In this simiple example, you see that both arguments are expected to be floats and the second argument even has a default value of 3. 
Finally, the expected output is as float. 
Importantly, python does not actually check to confirm the types are as hinted.
So, you will still need to raise the appropriate exception.
This is only to make it easier to understand how to properly use the script and/or function. 
You can use all the primative types for hints:
- `int`
- `str`
- `float`
- `bool`
- `bytes`
- `list[int or str]`: As of 3.9+ otherwise need to import: `from typing import List`
- `dict`: As of 3.9+ or need import: `from typing import Dict`
- `set`: As of 3.9+ or need import: `from typing import Set`
- `tuple`: As of 3.9+ or need import: `from typing import Tuple`

> **Note**: For all type hints that are imported, you need to change the type hint to capitalize the first letter when using them in functions.

It is important that you are as specific as possible when creating type hints otherwise they are not that useful.
For example, it would be a bad idea to have a `str` type hint if it really could only be `BEGINNER`, `INTERMEDIATE`, and `ADVANCED`.
Instead you should create you own custom type hint.
Luckily, the `Enum` function makes this incredibly easy.

```python
from enum import Enum

class Difficulties(Enum):
    # You can also assign a specific value if needed.
    #     E.g., BEGINNER = 1 # or 'b'
    BEGINNER = auto()
    INTERMEDIATE = auto()
    ADVANCED = auto()

def get_difficulty(diff: Difficulties):
    return(diff.name)

result = get_difficulty(Difficulties.ADVANCED)
print(result) 👉️ ADVANCED
```

As you can see, type hints make your code much more clear as to what each function/class expects as inputs.
Using them can help others (including your future self after you forgot this project) understand what your functions need to work.
By including them in your code, you will significantly increase your codes readability.


## Additional Resources

For more infromation about type hints such as other use cases, using special type hints, or using custom type hints see this [post][th1].

## Exceptions

An [exception][e1] is a point in the code where an error occured.
All exceptions have a description of what went wrong as well as a `Traceback` of where the exception was encountered. 
There is a list of common exceptions as well as the hierarchy is on the [python website][e2]
Some common exceptions include:
- `SyntaxError`: As described, you messed up the syntax. You will get this a lot when starting out.
- `ValueError`: When the value is incorrect like square rooting a negative number.
- `FileNotFound`: You guessed it, either the file does not exist ***OR*** you spelled it wrong. 
- `TypeError`: You used the incorrect type, like adding strings and integers.
- `IndexError`: Index outside the range of the array. 

Whenever possible you should use the builtin [exceptions][e2] but you can create you own custom ones when necessary. 

In your own applications, the most common use case it with a `try/except`, to raise an exception. The use the following structure:

```python
try:
    # code that will be attempted first
except e as ValueError:
    # Code that will run when the specific expection is encountered, 
    #     you can have multiple of these to handle different exceptions 
    #     differently. 
    raise
else: 
    # Additionally code that should be run if it is successful
finally: 
    # Addition code that should be run regardless 
    #     if it encountered an exception or not.

```

The first section, the `try` section should really only contain the ONE line you think could raise and exception.
Often when starting out, I see people putting huge chunks of code here, but this is bad practice.

The `except` block should only address a single exception, you can have multiple `except` clauses if need be.
Then you typically want to end this clause with `raise` to actually raise the exception to the user.
Other common usecases for this is to log the error for your records and/or provide some helpful hints to the user about what might have gone wrong.
Also note, the fact that we raise a specific exception, in this case a `ValueError`.
Its important to raise the exception you expect to have 1) so you are explicit and handle each one accordingly, but also 2) that way you are not raising a general exception which will catch anything, even a `KeyboardInterupt` meaning they will not be able to (easily) end your program/app.

The `else` block is code that should be executed only if the `try` block was successfully completed without any errors.

Last but not least, the `finally` block runs regardless of if the code ran into and exception or not.

Add these `try/except` clauses to your code can help you properly deal with error you anticipate you users might encouter.
And overall can help improve the users experience when used properly.
However, it is important to use them sparringly.

## Additional Resources

If you are looking for more in depth examples, check out:

- This [video][e1] for beginner
- Or this [one][arjanerror] for more intermediate use cases


## Logging

When you first start using python and you want to test/debug your code, then you like just add print statements to your code.
Which means you likely have to add a bunch of comments to hide and unhide them as you are testing (*do you feel called out yet*).
While this technically gets the job done, that is not the proper way to do it.
A much much better way is to use the built in [`logging`][l1] function.

You might be asking yourself, why do I specifically need to use the logging package to print out values, and show errors as they occur.
Its so you can have a record of these events.
By using the logging function you actually store all these events, so you know what happened, and don't rely on your memory when it comes time to writing up what went wrong. 
You have a full history of everything that happened.
You simply log events as they happen, then you have the full time line.
When the participant started the experiment, when did they move to this section or that section.
Everything is recorded for you. 

What about just print/debugging, why should you use loggin then?
Well there are a few reasons. 
First its pretty common, that if you are logging a value during testing, it is probably a pretty important value in the end, so might as well just have it stored while the experiment is running. 
Second, using the print method, you often have a bunch of print statement which clutter up the console output.
And you ususally solve this problem with by commenting and uncommenting some of the print statements, which then just clutters up the code.
Having things done using the `logging` makes it easy to just specify what you want to log for a give moment.
For example you can only log the `DEBUG` messages to the console to see them. 

## Asynchronous Code

There are often parts of code that can take a long time to complete, say pull data from different web apis.
Each web request is independent of one another meaning that the results of what request does not affect any of the others.
In these cases, you can use the `asyncio` package to run multiple web request asynchronously.
This can speed up the program quite significantly.

```python
import asyncio
```

For more information, you can check out this [video][a1] or this [blog post][a2]. 


## References

[1]: https://youtu.be/woIkysZytSs "Arjan Codes: 8 Python Coding Tips - From The Google Python Style Guide"
[2]: https://youtu.be/LrtnLEkOwFE "Arjan Codes: Code Smells Part 1"
[3]: https://youtu.be/zmWf_cHyo8s "Arjan Codes: Code Smells Part 2"
[4]: https://youtu.be/Kl3_Gmn4Ujg "Arjan Codes: Code Smells Part 3"
[5]: https://www.geeksforgeeks.org/abstract-classes-in-python/ "Abstract Classes in Python"

### Virtual Environmnts

[pipenv]: https://github.com/pypa/pipenv "Pipenv Python Dev for Humans"
[vewrapper]: https://virtualenvwrapper.readthedocs.io/en/latest/ "Virtual Wrapper"
[virtualenv]: https://pypi.org/project/virtualenv/ "Virtual Env"
[condaenv]: https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html "Conda environments"
[anaconda]: https://www.anaconda.com/products/distribution "Anaconda"
[pyenv]: https://github.com/pyenv/pyenv "Pyenv for simple VE in python"
[venv]: https://docs.python.org/3/library/venv.html "Venv: Python Builtin Virtual Environment Creator"


### f Strings

[f1]: https://realpython.com/python-f-strings/ "Real Python: f strings"
[f2]: https://youtu.be/dvqFNOhNIjM "Arjan Codes: f Strings Set size"
[f3]: https://stackoverflow.com/a/45310389 "SO: f Strings round"
[f4]: https://youtube.com/shorts/07Pxa3TbQc4?feature=share "Python Engineer: f Strings large numbers"
[f5]: https://stackoverflow.com/a/50340297 "SO: f Strings round Detailed"


### Type hints

[th1]: https://mypy.readthedocs.io/en/stable/cheat_sheet_py3.html "Type hints cheatsheet"


### Exceptions

[e1]: https://youtu.be/nlCKrKGHSSk "Socratica: Exceptions"
[e2]: https://docs.python.org/3/library/exceptions.html#exception-hierarchy "Python Exception Hierarchy"
[e3]: https://youtu.be/6tNS--WetLI "Corey Schafer: Long Run Unit Testing Tutorial"
[arjanerror]: https://youtu.be/nlCKrKGHSSk "Arjan Codes YT: Exception Handling"

### Logging

[l1]: https://youtu.be/g8nQ90Hk328 "Socratica: Logging"
[l2]: https://www.geeksforgeeks.org/logging-in-python/ "GeeksforGeeks: Python Logging"
[l3]: https://realpython.com/python-logging-source-code/ "Real Python: Logging"

### Asynchronous Code

[a1]: https://youtu.be/2IW-ZEui4h4 "Arjan Codes: Asynchronous Code with Asyncio"
[a2]: https://realpython.com/python-async-features/ "Real Python: asyncio"
