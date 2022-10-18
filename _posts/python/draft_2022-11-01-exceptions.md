---
layout: post
title:  "Python Exceptions"
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
- Learn how to properly log and handle errors in your code 

Prerequisites:
- Basic/working knowledge of how to write python code. Does not need to be advance, as long as you know how to write and run a script.

</section>

## Exceptions

<!-- excerpt-start -->

An [exception][e1] is a point in the code where an error occured.
All exceptions have a description of what went wrong as well as a `Traceback` of where the exception was encountered. 
There is a list of common exceptions as well as the hierarchy is on the [python website][e2]
Some common exceptions include:
- `SyntaxError`: As described, you messed up the syntax. You will get this a lot when starting out.
- `ValueError`: When the value is incorrect like square rooting a negative number.
- `FileNotFound`: You guessed it, either the file does not exist ***OR*** you spelled it wrong. 
- `TypeError`: You used the incorrect type, like adding strings and integers.
- `IndexError`: Index outside the range of the array. 

<!-- excerpt-end -->
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
