---
layout: post
title:  "Make Readable Functions with Python Type Hints"
date: 2022-10-03
author: Deshawn Sambrano
tags: Coding Python Best-Practices
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
- Learn how write readable/usable functions with type hints

Prerequisites:
- Basic/working knowledge of how to write python code (e.g., write a function).

</section>

## Type Hints

<!-- excerpt-start -->
Type hints are a tool that can be used in python to improve readability and expectations of code input and output for functions and classes. With type hints you specify the type each argument requires/expects as well as the expected output type.

<!-- excerpt-end -->

```python
def add(a: float, b: float=3.1) -> float:
    return(a + b)
```

In this simiple example, you see that both arguments expect float values and the second argument even has a default value of `3.1`.
Finally, the expected output is also a float.

In the image below shows how linters use type hints to help you when writing code.
Since I include the `int` type hint for the value parameter, when I use the function with a `str`, it gives me the linting warning.
As you can imagine, this can help a ton for improving the usability of your code.

![Linter Example with Type Hints](/assets/imgs/type_hints.png)

Importantly, python does not actually check to confirm the types are as hinted.
So, you will still need to raise the appropriate exception.
This is only to make it easier to understand how to properly use the script and/or function.
And it will dramatically improve your ability to develop and use the code when you have a linter (when you IDE tells you when you have coding mistakes).
You can use all the primative types for hints:
- `int`
- `str`
- `float`
- `bool`
- `list[int or str or float]` (`[]` indicates what type are expected inside the list)
- `dict[str, str]` (for a dictionary with both the key and value as strings): 
- `tuple[str, int]` (for a tuple of size 2 with a string then int): 
- `set`

As of python 3.9+ you can use the `list`, `dict`, `tuple`, and `set` natively.
However, previous versions of python require you to import them from the typing module (e.g., `from typing impor Dict`).
Additionally for all these sequences, you can specify what type are expected inside the sequence with the `[]` notation.
> **Note**: For all type hints that are imported, you need to change the type hint to capitalize the first letter when using them in functions.

When creating type hints, it is important that you are as specific as possible, otherwise they are not that useful.
For example, it would be a bad idea to have a `str` type hint if it really could only be `BEGINNER`, `INTERMEDIATE`, and `ADVANCED`.
Instead you should create you own custom type hint.
Luckily, the `Enum` function makes this incredibly easy.
You just need to create a class, which inherits from `Enum` and contains all the options for your specific use case.
For example,

```python
from enum import Enum

class Difficulty(Enum):
    # You can also assign a specific value if needed.
    #     E.g., BEGINNER = 1 # or 'b'
    BEGINNER = auto()
    INTERMEDIATE = auto()
    ADVANCED = auto()

def get_difficulty(diff: Difficulty) -> Difficulty:
    return(diff.name)

result = get_difficulty(Difficulty.ADVANCED)
print(result)  # 👉️ ADVANCED
```

As you can see, type hints make your code much more clear as to what each function/class expects as inputs.
Using them can help others (including your future self after you forgot this project) understand what your functions need to work.
By including them in your code, you will significantly increase your codes readability.


## Additional Resources

For more information about type hints such as other use cases, using special type hints, or using custom type hints see this [post][th1].

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
