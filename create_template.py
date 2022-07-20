#!/usr/bin/env python3

filename = input("File Name: ").replace(" ", "_")
name = filename.replace("_", " ")

difficulty = input("Difficulty level: [Beginner]/Intermediate/Advanced ").lower()

if difficulty=="beginner" or difficulty=='b' or difficulty=='':
    diff_text = '<span style="color:green">Beginning</span>'
    diff_time = 10
    h2 = f'{name.capitalize()} Basics'
elif difficulty=="intermediate" or difficulty=='i':
    diff_text = '<span style="color:yellow">Intermediate</span>'
    diff_time = 20
    h2 = f'What is {name.capitalize()}?'
elif difficulty=="advanced" or difficulty=='a':
    diff_text = '<span style="color:red">Advanced</span>'
    diff_time = 30
    h2 = f'What is {name.capitalize()}?'
else:
    exit()


contents = f'''# {name.capitalize()}

## Takeaways

**[Estimated Read Time {diff_time} mins]**

In this blog you will learn the basics of {name}. Specifically you will learn:
- 
- 
-

Difficulty: {diff_text}

Prerequisites:
- None


## {h2}



## Homework


## References
'''
with open(f"{filename}.md", 'w') as f:
    f.write(contents)
