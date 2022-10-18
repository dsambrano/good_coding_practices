# Docker

## Takeaways

**[Estimated Read Time 10 mins]**

In this blog you will learn the basics of docker. Specifically you will learn:
- What docker is used for and how it can benefit scientific research
- How to create a docker container to move across computers and have identical environments

Difficulty: <span style="color:red">Advanced</span>.

Prerequisites:
- None


## What is Docker and Why should I learn it?

[Docker](https://www.docker.com/) is a application to create isolated coding/development environment.
For researchers, perhaps its best use case is that you can have have a docker container that you made on your work/personal machine that you can know will work on the stimulus pc (the computer used for running participants).
Anyone that has created software and needed to transport it to another computer (let alone another OS; e.g., MacOS to Windows 10) will know that it is something ALWAYS goes wrong. 
Sometimes its a relatively simple fix; but sometimes it can take hours to figure out just what is the issue is. 
Well if you set up everything in a docker container it is self contained, so you know for sure that it will work.
Its like packaging together all of the requirements all into a single app that can be run on any computer. 

Still a little confused here is a [SO post](https://stackoverflow.com/a/16048358), a [100 seconds fireship video](https://www.youtube.com/watch?v=Gjnup-PuquQ). And if you are getting the hang of it, but want a little more here is an excellent [resource](https://youtu.be/gAkwW2tuIqE) for intermediate users.


## Docker Example

[python docker example](https://docs.docker.com/language/python/build-images/)


## Common Docker Commands

```
docker run
docker build 
docker ps
docker df
```
