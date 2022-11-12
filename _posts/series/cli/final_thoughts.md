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

## Best Practices

See variables section from scripts and path env

## Additional Resources

[parameter expansion][]

[expansion]: https://stackoverflow.com/a/17992896
[gnu-expansion]: https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Shell-Expansions
[parameter-expansion]: https://opensource.com/article/17/6/bash-parameter-expansion
