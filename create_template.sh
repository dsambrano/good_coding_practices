#!/usr/bin/env bash

read "File Name: " $Name

read "Difficulty level: [Beginner]/Intermediate/Advanced "


cat <<EOT >> $Name.txt

# $Name

## Takeaways

**[Estimated Read Time 10 mins]**

In this blog you will learn the basics of docker. Specifically you will learn:
- What docker is used for and how it can benefit scientific research
- How to create a docker container to move across computers and have identical environments

Difficulty: <span style="color:red">Advanced</span>.

Prerequisites:
- None


## $Name Basics



## Homework

EOT

