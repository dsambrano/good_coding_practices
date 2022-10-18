---
layout: post
title:  "Reproducible Python Code with Virutal Environments"
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
