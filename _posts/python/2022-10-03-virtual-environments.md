---
layout: post
title:  "Reproducible Python Code with Virutal Environments"
date: 2022-09-14
author: Deshawn Sambrano
tags: Coding Python Best-Practices
time: 5
category: python
draft: true
usemathjax: true
series: false
diff: beginner

---


{% include sidebar.html %}

<section class="takeaways">

In this post you will learn some best practices for coding in Python.
Specifically, you will learn how to create different virtual environments to prevent the dependencies of one project from interferring with another.
By the end you will:
- Learn how to create virtual environments to isolate python packages for each project
- Learn how to save all your projects dependencies to a file to use on another machine
- Learn how to import a `requirements.txt` file to reproduce an virtual environment and run code on a new machine

Prerequisites:
- Basic/working knowledge of how to write python code. Does not need to be advance, as long as you know how to write and run a module (script).

</section>

## Reproducible Code

<!-- excerpt-start -->

Many of the keys to writing good code in python also mean you write reproducible code.
Why? Because
>Code is meant for HUMANS, not machines

So making sure you write good code means making sure you write code that you or others can read, understand, and edit without much hassle.
The better you get at that skill, the better coder you will become, but simultaneously, you will also have more flexible and reproducible code.
In this post, we will focus on the last part, reproducability.
We will do this by making an environment that can be recreated so anyone can replicated your code on their machine.

<!-- excerpt-end -->


## Virtual Environments

Virtual Environments are a mechanism used to prevent dependency issues across your python project.
This is designed to solve the problem that occurs when one project might need `numpy 1.23.0`, while another one might need `0.97`.
<!-- If you installed all the packages then each project can produce undisired results. -->
To solve this issue, virtual environments create isolated environments to install packages for a specific project.
That way, the packages installed for one project won't affect any other projects.
There are several tools for implementing virtual environments:

- [Anaconda environments][condaenv] with `conda create`
- [venv][] which is python's builtin method
- [virtualenv][] with [vewrapper][]
- [pipenv][]
- [pyenv][]


### Anaconda

For beginners and data scientist, I would say [anaconda environments][condaenv] are the easiest to use because they also allow you to specify a python version.
So I would recommend using those, and switching to one of the others if the project needs it or you learn the basics because conda environments can take a lot of space and are quite heavy.

After installing (with a [package manager][packagemanager], e.g., homebrew `brew install --cask anaconda` or download it from the [website][anaconda]).
You can create a [`conda env`][condaenv] with the following command:

```bash
conda create -n NAME_OF_ENVIRONMENT python=VERSION_NUMBER
```

then you just activate the environment with:

```bash
conda activate NAME_OF_ENVIRONMENT
```

> Note: When active, you will see the name of the environment in parentheses before your terminal prompt (e.g., `(my-env) ~`).

now everything that you install with `pip install` or `conda install` will be completely isolated from the rest of your python environments so you don't need to worry about dependency incompatabilities.
> Note: `conda` also always you to install packages with `conda install`, but they are not always the most up to date, so I tend to stick with the `pip` versions, unless its necessary.

To leave the environment just use:

```bash
conda deactivate
```

### Venv

Using the builtin `venv` method is pretty common online for github projects, so I will show a basic example.

```bash
python3 -m venv NAME_OF_VIRTUAL_ENV # Creation
source ./NAME_OF_VIRTUAL_ENV/bin/activate # Activation Mac and linux
# venv\Scripts\activate # Activate on Windows
deactivate  # Deactivates the environment
```

Now that you have a working (and active) virtual environment, you can install all the packages that you want, and they will not affect any other proejcts that you have.


## Freeze the Packages!

Now, that you know what a virtual environment is and how to set them up, you can learn how to replicate previous virtual environment on new machines.
We just need to make sure the new machine has all the same packages and version numbers as the previous machine, but how do we do that?
<!-- Well the first step is to figure out all the packages we have installed in the current virtual environment.
The first step to reproduce some code is to make sure that you have all the correct packages. -->
In python, you can save all the installed packages in your current virutal environment along with their version numbers following command:

```bash
pip freeze > requirements.txt
```

This will save all the packages that are installed in your [current environment][ve] to a file called `requirements.txt`.
Then on a new system you can install all those packages into your environment with:

```bash
pip install -r /path/to/requirements.txt
```

Now, whenever you make a new project, after you install all the packages, you can run the `pip freeze` command to save them and the install them in your [virutal environment][ve] on your new machine with `pip install -r`.
Now, you have a replicated virtual environment and can run the code on the new machine with the same results!

<!-- ## References -->

[1]: https://youtu.be/woIkysZytSs "Arjan Codes: 8 Python Coding Tips - From The Google Python Style Guide"
[2]: https://youtu.be/LrtnLEkOwFE "Arjan Codes: Code Smells Part 1"
[3]: https://youtu.be/zmWf_cHyo8s "Arjan Codes: Code Smells Part 2"
[4]: https://youtu.be/Kl3_Gmn4Ujg "Arjan Codes: Code Smells Part 3"
[5]: https://www.geeksforgeeks.org/abstract-classes-in-python/ "Abstract Classes in Python"

<!-- ### Virtual Environmnts -->

[ve]: #virtual-environments
[pipenv]: https://github.com/pypa/pipenv "Pipenv Python Dev for Humans"
[vewrapper]: https://virtualenvwrapper.readthedocs.io/en/latest/ "Virtual Wrapper"
[virtualenv]: https://pypi.org/project/virtualenv/ "Virtual Env"
[condaenv]: https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html "Conda environments"
[anaconda]: https://www.anaconda.com/products/distribution "Anaconda"
[pyenv]: https://github.com/pyenv/pyenv "Pyenv for simple VE in python"
[venv]: https://docs.python.org/3/library/venv.html "Venv: Python Builtin Virtual Environment Creator"
[real-ve]: https://realpython.com/python-virtual-environments-a-primer/

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


[packagemanager]: {{site.data.links["general"]["package-managers"]}}
