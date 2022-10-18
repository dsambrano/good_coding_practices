---
layout: post
title:  "String Manipulation: f-strings"
date: 2022-10-03
author: Deshawn Sambrano
tags: Coding Python
time: 20
category: python
draft: true
usemathjax: true
series: false
diff: intermediate

---


{% include sidebar.html %}

<section class="takeaways">

In this post you will learn some best practices for coding in Python. By the end you will:
- Learn how f-strings work to make clean text in python

Prerequisites:
- Basic/working knowledge of how to write python code. Does not need to be advance, as long as you know how to write and run a script.

</section>


## f strings

<!-- excerpt-start -->

When first learning how to handle strings in pythong you will likely learn the `%` sign strategy.
This is woefully outdated so as you progress you will soon learn the `.format` method, which was introduced in python `3.0`.
However this is also no longer the best way to deal with strings (and hasn't been for awhile).
The modern way to deal with strings in python are with [`f strings`][f1].
They are far more readable and allow flexability that is simiply not available in the other methods.

<!-- excerpt-end -->

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



<!-- ## References -->

[1]: https://youtu.be/woIkysZytSs "Arjan Codes: 8 Python Coding Tips - From The Google Python Style Guide"
[2]: https://youtu.be/LrtnLEkOwFE "Arjan Codes: Code Smells Part 1"
[3]: https://youtu.be/zmWf_cHyo8s "Arjan Codes: Code Smells Part 2"
[4]: https://youtu.be/Kl3_Gmn4Ujg "Arjan Codes: Code Smells Part 3"
[5]: https://www.geeksforgeeks.org/abstract-classes-in-python/ "Abstract Classes in Python"

<!-- ### Virtual Environmnts -->

[pipenv]: https://github.com/pypa/pipenv "Pipenv Python Dev for Humans"
[vewrapper]: https://virtualenvwrapper.readthedocs.io/en/latest/ "Virtual Wrapper"
[virtualenv]: https://pypi.org/project/virtualenv/ "Virtual Env"
[condaenv]: https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html "Conda environments"
[anaconda]: https://www.anaconda.com/products/distribution "Anaconda"
[pyenv]: https://github.com/pyenv/pyenv "Pyenv for simple VE in python"
[venv]: https://docs.python.org/3/library/venv.html "Venv: Python Builtin Virtual Environment Creator"


<!-- ### f Strings -->

[f1]: https://realpython.com/python-f-strings/ "Real Python: f strings"
[f2]: https://youtu.be/dvqFNOhNIjM "Arjan Codes: f Strings Set size"
[f3]: https://stackoverflow.com/a/45310389 "SO: f Strings round"
[f4]: https://youtube.com/shorts/07Pxa3TbQc4?feature=share "Python Engineer: f Strings large numbers"
[f5]: https://stackoverflow.com/a/50340297 "SO: f Strings round Detailed"


<!-- ### Type hints -->

[th1]: https://mypy.readthedocs.io/en/stable/cheat_sheet_py3.html "Type hints cheatsheet"


<!-- ### Exceptions -->

[e1]: https://youtu.be/nlCKrKGHSSk "Socratica: Exceptions"
[e2]: https://docs.python.org/3/library/exceptions.html#exception-hierarchy "Python Exception Hierarchy"
[e3]: https://youtu.be/6tNS--WetLI "Corey Schafer: Long Run Unit Testing Tutorial"
[arjanerror]: https://youtu.be/nlCKrKGHSSk "Arjan Codes YT: Exception Handling"

<!-- ### Logging -->

[l1]: https://youtu.be/g8nQ90Hk328 "Socratica: Logging"
[l2]: https://www.geeksforgeeks.org/logging-in-python/ "GeeksforGeeks: Python Logging"
[l3]: https://realpython.com/python-logging-source-code/ "Real Python: Logging"

<!-- ### Asynchronous Code -->

[a1]: https://youtu.be/2IW-ZEui4h4 "Arjan Codes: Asynchronous Code with Asyncio"
[a2]: https://realpython.com/python-async-features/ "Real Python: asyncio"
