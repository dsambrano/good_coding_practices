## Takeaways

[Estimated Read Time 5 mins]

In this blog you will learn the basics of Markdown and Markdown Files. These are in no particular order and some may some obvious, while others less so. If you already know why its useful/already implement it, feel free to jump around 

Prerequisites:
- None

## What is Markdown

Markdown is a markup language. It is a super easy way to have embedded structure when taking notes or documenting things. This is because it has super simple syntax. 

For example all these blogs were created with Markdown. To get started make a make a file name ending in the `.md` extension. Now any text you type will have a highlevel markup. So if you want to make headers like we have here just put `# Title` then have a line break and all  the text underneath will be in that sub header. Similarly you have do other headers with the following syntax:

```
# Heading level 1
## Heading level 2
### Heading level 3
#### Heading level 4
##### Heading level 5
###### Heading level 6
```

# Heading level 1
## Heading level 2
### Heading level 3
#### Heading level 4
##### Heading level 5
###### Heading level 6

Basically, Markdown is a way to allow you to focus on the notes or writing process without having to add in all the high level things to add a nice sold structure without having to deal with the extra headache. Below are several simple/common things you will want to do in Markdown. But for more info visit the [Markdown cheatsheet](https://www.markdownguide.org/basic-syntax). Otherwise enjoy your new toy! Don't forget the [Homework](markdown.md#homework)

One final piece of advice, while viewing the `.md` file you won't see all the fancy formatting; however, most modern IDE (e.g., sublime, VScode, etc.) have either native or plugin support to allow you to view the full fancy version while typing.  

__________________
### Bold and Emphasis
Bold and italics are easy to **bold** (`**bold**`), *italics* (`*italics*`), ***bold and italics*** (`***bold and italics***`).

### Links (Most Useful?)
This is the feature I use the most. Here we can use the following structure for links:

```
[description](link)
```

But when I mean link, I don't just mean a website... no, no, no. They can link to any file on your computer as well using its relative path. So say we had a Markdown file containing notes. I can link to that file from here with the following syntax:

```
I can link to that file from here with the following [syntax](notes.md)
```

But it gets even better, since that is a markdown file I can even link to a specific subsection. For example, say their was a subsubsection (level 3 header) titled lottery. Then I can specifically link to that with this syntax:

```
Linking to the [lottery section](notes.md#lottery)
```

Of course, since you can link to a file, you can also embed pictures and links.

```
[My personal website](https://dsambrano.com/)
```
[My personal website](https://dsambrano.com/)

```
![Image Description](imgs/git_stages.png)
```
![Image Description](imgs/git_stages.png)
> Note the `!`. Also, you need to have the image in that folder with that name for it to show up. 


## Lists
list are as easy as a dash:
- first 
- second
  - second a
  - second b
- third 
- etc...
  
```
- first 
- second
  - second a
  - second b
- third 
- etc...
```

Numbered list work as well (notice you dont even need to number them correctly):
1. first
1. second
1. third

```
1. first
1. second
3. third
```

## Homework

Create a Markdown file describing all the main scientific decisions you made on your most recent project. For example, why did you select that specific stimulus vs another. Why that method?
> **Hint**: Use links to linke to relevant artcles or to other markdown files containing notes you made.