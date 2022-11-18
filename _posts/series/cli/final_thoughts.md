Final thoughts/things I didnt cover:
$(( math ))
${parameter expansion}

```bash
test="weeh"
echo $test  # 👉 weeh
echo ${test}  # 👉 weeh
echo $(test)  # No response because it is not a command
```

$(commandexpansion)
Good case is `cd`
startingdirectory=$(cd)

```bash
which ls  # 👉 ls=lsd
${which ls}  # error bad substitution
echo "Now we can include the output of commands: $(which ls)" 
# 👉 Now we can include the output of commands: ls=lsd
```

| notation to pipe one command into another and 

Adding comments #

aliases # Does it need its own page? Nah I just add to the end of the export section of EVN

|| and && in control flow:


what does `>` and `>>` really mean. (separate futuer post? maybe with examples like ls or the like)

## Best Practices

See variables section from scripts and path env

## Further Exploration

As you can imagine, this is just a taste of the command line. You can do so so much more. Hopefully this was just enough to wet your appetite, and make you eager to explore more. One great place to start is with [Modern Unix][munix]. This is a project that has upgrades many of the commands we just talked about to fit with the modern world, (e.g., adding colors, speed, etc.). Another way to speed things up is to make alias which you can write short hand for really long commands.

## Additional Resources

[parameter expansion][]

[expansion]: https://stackoverflow.com/a/17992896
[gnu-expansion]: https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Shell-Expansions
[parameter-expansion]: https://opensource.com/article/17/6/bash-parameter-expansion
