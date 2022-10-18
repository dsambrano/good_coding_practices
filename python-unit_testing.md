# Python: Unit Testing

## Takeaways

**[Estimated Read Time 20 mins]**

In this blog you will learn the basics of unit testing in python. Specifically you will learn:
- What a Unit Test is and why they are useful
- How to run unit tests and how to use a Test Driven Development (TDD) pipeline
- How to get coverage reports for your projects

Difficulty: <span style="color:yellow">Intermediate</span>

Prerequisites:
- You need to be comfortable writing python code include making your own project
- You should be familiar with the `assert` command in python


## What is Python: Unit Testing?

Unit tests are a mechanism in python to test your code. These tests are placed inside a `tests/` sub directory inside your main project folder and are run with the `pytest` command. You can also get coverage information (`pytest --cov`) or even a coverage report with `coverage html`.

Standard practice is you have one file for each class/function you are testing and label them `tests/test_class_name.py`.
Inside each test file, you can, **and should**, test multiple parts of the class.
each test should be created as a function, which is name the same as the class or function you are trying to test and prepend `test_` to it. 
It should also have an assert statement (and typically returns nothings). 
One example is shown below:

```python
def test_name_of_class_or_funtion() -> None:
    assert(relevant_assert_statement)
```

## Unit Tests Example

Still looking for more? Check out this [video][1] (part 2 of the video [here][2])


## Test Drive Development

Test Driven Development ([TDD][])

[1]: https://youtu.be/ULxMQ57engo "Arjan Codes: Unit Tests Part 1"
[2]: https://youtu.be/NI5IGAim8X "Arjan Codes: Unit Tests Part 2"
[3]: https://youtu.be/DhUpxWjOhME "mCoding: Unit Tests"
[4]: https://youtu.be/1Lfv5tUGsn8 "Socratica: Unit Tests"
[TDD]: https://youtu.be/B1j6k2j2eJg "Arjan Codes: Test Drive Development"
## Homework


