
title: Reusing Code with Loops and Functions


You can come a long way since you first started, but you are probably still having to repeat yourself alot.
You might need to repeat the same line of code but on different folders/files.
Well this post will end that.
Today we are talking about `for` and `while` loops.
Loops are used to help you repeat actions over a list of items.

After today you will have all your basic tools in your toolkit to code.
The cool part is, all these principles you learned apply to virtually all other programming languages, so you will be able to pick up another in no time.


## Structure

```bash
while [condition]; do
  stuff to do
  some conditional to make condition false
done
```

where `condition` could be replaced with anything you learned in the [flow control][flow-control] post.
a while loop will keep running the stuff inside until the condition is no longer `true`. These can be a bit dangerous

```bash
for i in {ARRAY}; do
  command or commands you want to do multiple times
done;
```

G
Good practice to make sure you first run through your code on a single interation before trying to apply it as we full fledged loop.


Of course you can combine all the concepts we learned previously, by putting an if statement inside your loop and putting the whole thing inside a script, and finally, placing that script inside your path to run it from anywhere!



[flow-control]: 
https://www.cyberciti.biz/faq/bash-while-loop/
