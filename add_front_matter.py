#!/usr/bin/env python3

import sys
import datetime
from pathlib import Path

def read_info(file: Path):
    name = file.stem[11:]
    date = file.stem[:10]
    return name, date


def add_front_matter(file: Path):
    name, date = read_info(file)
    with file.open("r") as f:
        content = f.read()
    
    front_matter_content = f'''---
layout: post
title:  "{name.capitalize()}"
date: {date}
author: Deshawn Sambrano
tags: 
time: 10
#category: false
#series: false
#permalink: 
diff: expert
draft: true
usemathjax: true
---
'''
    with file.open("w") as f:
        f.write(front_matter_content + content)

def main(file: Path):
    with file.open("r") as f:
        lines = f.readlines()
        lines = [line.rstrip() for line in lines]

    front_matter = any([True if "---" in x else False for x in lines[:10]])
    if not front_matter:
        add_front_matter(file)
        print(f"Default Front Matter Added to {file}")
    else:
        print("Already Has Front Matter")

if __name__ == "__main__":
    file = Path("_posts", sys.argv[1]) if len(sys.argv) == 2 else Path("_posts", "2022-10-03-markdown.md")
    if file.exists():
        print(f"Editing File: {file}")
        main(file)
    else:
        print(f"{file} does not exist. To create from the new template use 'python create_template.py'")
