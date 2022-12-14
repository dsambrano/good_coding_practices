---
layout: post
title:  "Coding Productivity: How to Improve you Workflow in 5 Minutes"
date: 2022-10-03
author: Deshawn Sambrano
tags: Coding
time: 5
usemathjax: true
series: false
diff: beginner
---

<!--Notes: Dry should go last and needs and intro. Also need to cut text a bit to actually be 5 minutes or change title-->

{% include sidebar.html %}


<section class="takeaways">

This blog contains a hogpodge of miscellanous tips to improve your general coding productivity.
Each are super simple and don't really fit within any of the other posts. So this is the place for them.
By the end you will:

- Improve you productivity

Prerequisites:
- None

</section>

## Don't Repeat Yourself (DRY)


<!-- excerpt-start -->

This is probably the most valuable tip here.
Honestly, never do things more than once.
If you have to do somehting more than once, you should write code to save you the hassle.
Let me preface this by saying, that there will be times, especially as you are improving as a programmer, that it will end up taking more time by you coding it out. 
However, that is time that you learned a new skill and it will make future projects much quicker to implement either because now you have more knowledge, you have a better understanding of how to make a clean code, or better yet, becuse you will reuse part of that code later on. 
Your time is very valuable, don't waste it on repeating things. 
If you are going to spend time doing something more than once, it should at least come with the benefit of additional knowledge. 

You probably are already using this principle in your code with variables. 
Instead of typing out the same number multiple places in your code, you make a variable and use that variable in the code.
The imporant part to is extend it even further.
You should really try to avoid common tasks, especially if they are commonly clustered together. 
For example, in code, you might need to commonly run several tasks together.
For data science, a trivial example might be to run t-test.
You need to create the plots to check the data, run the test, run the effect size test, and finally, capture all the specific numbers.
Instead of you doing this multiple times for each variable where you will copy most of the code and change the few relevant parts you should make a function.
When you copy the code, you run the risk of forgetting to replace a variable and if you every change something/add something you have to add it in multiple locations.
This is a system with a high likelihood of mistakes.
Instead, when using a function can call that function and pass the variables as arguments.
Now if you need to change something in a location, it will be automatically updated everywhere.
You can even take it one step further and have it print out your stats sentence, so you can avoid potential mistakes from grabbing the wrong one.


But of course, don't stop there, this principle can be applied to things that are seemingly unrelated to coding as well.
For example, let's say you have the same folder structure for all your projects and everytime you start a new one you have to make all those folders.
DRY; instead just write some code to make it for you.
Similarly, if you have rename a bunch of files in a particular way; code it.
As much as you can, you should find the things you do often/multiple times and find ways to automate them.
This can drastically improve your efficency.

To summarize, you should strive that that code you write is unique.
If you write something you have already written you could have just used that code.
So you can use code to solve this problem:

- Multiple sequentially run lines can be made into a function
- Common Biolerplate metadata (e.g., definining functions and docstrings) can be made into a snippet
- Repeated actions should be made into a script.

Over time you will have alots of scripts that solve all the standard tasks that are unique to you.

## Use a Tiling Window Manager

I used to waste way, way to much time either switching back and forth between apps or adjusting them so that I can see both at once. 
That is... I had that problem until I came across a tiling window managers. 
By default Mac OS and Windows use a Floating (or a stacking) window manager, where as you open additional apps they keep stacking on top of one another (or floating over one another). 
This style is comfortable because we are used to it, but it waste a lot of time because we have to flip through to find the apps (even with Keyboard Shortcuts flipping through your apps is still slow) or to move/resize them to see all the content on the screen at once. 
Tiling window managers on the other hand, automatically adjust where new windows show up. 
As the name implies they are adjusted in a grid that makes all the windows look like different times. Its truely amazing. 
It increase my productivity even more than when I got a second monitor (which if you have never had one, they are super helpful). 

<!-- Here is a video to show have nice they can be: <iframe width="420" height="315" src="http://www.youtube.com/embed/dQw4w9WgXcQ" frameborder="0" allowfullscreen></iframe> -->

Most tiling window managers are designed so you never have to touch that mouse, so you have a ton of keyboard shortcuts, to flip/rearrange/adjust the windows. 
This will take a couple of days to get used to but it is definitely worth it. 
Also you can change what those keybinds are so they suit something that either is more intuitive or something you are just used to. 
You can just search them up, but here is my favorite for Mac OS and Linux below:

- Mac OS: [Amethyst](https://github.com/ianyh/Amethyst)
- Linux: [Awesomewm](https://github.com/awesomeWM/awesome)

> Note: One important caveat, they are not super useful on really small screens such as a 11 inch laptop. However, if you connect to an external monitor, you can take full advantage of them on that second screen.

## Customize Your Software

This sounds silly, but if you find what you are looking at aethethically pleasing, then you are more likely to use it. 
Therefore, you will get more and more practice with that thing. 
I highly reccomend that you customize the look and feel of all text editors/IDEs as well as things like your terminal. 
In addition, to the look of your apps, make sure they shows you the information that is most important to you (e.g., change/move around the panels).

One clear example is the default terminal on Mac. 
I used to think this was fine as is (that is once I change the theme to have a black background and white text), but this all changed when I used Linux for the first time. 
Why? Because on Linux, by default, your terminal color change with the file type.
So if you use the `ls` command then all the files will be one color, folders another, and linked files another, pdf's another, images another, etc. 
This was amazing, it made it so much easier to navigate and see what I needed. 
Since then, I switched to the [iTerm2](https://iterm2.com/) terminal and added the [oh my zsh](https://ohmyz.sh/) color theming. 
The default color themes are good enough for most and it also adds some additional info to the command prompt to let you know if you are currently inside a git repo or not! If you want more customization, go check out this [post][terminal-customization].


## Develop with Simplicity in Mind

When I first started to code, I just wanted to avoid getting errors.
But as I improved, I didn't just want my code to work, I wanted it to be elegant, readable, and at least somewhat optimized.
Try to have this mindset as your are writing code, and it will improve your code in the future.
But more importantly, developing this mindset will force you to realize when certain solutions you are using in a software application is inelegant, and therefore you should find an alternative.
I know a lot of people who learned some extremely complicated (and error prone) method to accomplish something in say excel, but they never tried to find another solution.
Ask yourself is this the best way to accomplish the task at hand? Many times, you might think, surely someone else has come up with a simplier/cleaner solution than this.

But, why should you strive for an elegant solution?
A simplier solution is less prone to breaking, is more flexible so it can be adapting/reused for other task, and allows you make changes more easily as future problems arise.
I recognized that this is quite a vague principle, making it a bit hard to follow.
Just know that this comes with time, and if you make it a point to find simple solutions and common patterns to solving problems, this will benefit you greatly.

## Have a Style Guide

I have seen way to many projects that do not have a coding style guide, which makes this very hard to read, which in turn makes it harder to use, fix bugs, as well as develop new features in the future.
For example, having functions with a consistent naming scheme allows you to quickly call functions without having to remember if this letter or that letter is capitalized.
For every Language there is a style guide, it doesn't really matter which one you pick as long as you pick something and stick with it.
A good style guide should have explicit instructions for all situations that might arise. Some common examples include:

- Variable, Function, Class, Script, and Package naming conventions
- How to indent/space
- How many characters should be allowed on a single line
- And many more

Again, just find one that is popular for your language add a plugin to your IDE and let it does its magic.


[terminal-customization]: {% post_url /series/cli/2022-10-25-terminal-customization %}
