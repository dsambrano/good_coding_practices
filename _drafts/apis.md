# APIs

## Takeaways

**[Estimated Read Time 20 mins]**

In this blog you will learn the basics of APIs. Specifically you will learn:
- What is an API
- How to you use APIs
- API Keys/Authentication

Difficulty: <span style="color:yellow">Intermediate</span>

Prerequisites:
- Basic Familiarity with Python (or JavaScript)


## What are APIs?

[APIs][real] or Application Programming Interface are a way for a client (either some code you have written or an App or a website) to access data from a server. For example, every morning you might check the weather. Obviously, your phone does not actually know what the weather is going to be. Instead your phones sends an API request to the Weather Channel server to request the data. The Weather App on your phone then has extra code to visualize the data in an interesting way with animations etc. The web API is this interaction between your phone and the Weather Channel server. And as you can imagine there is a specific *interface* (or structure) the communication should take place. 

> **Note**: This is specific to web API which are by far the most common, but nearly everything that is coded is an API as well. For example, the Python language has APIs to perform actions (these are called functions). They are shorthand for you to have the machine do something in a programmatic way. 

There are hundreds and hundreds of public APIs. These are APIs that anyone can access free of charge. Some examples include [The Dog API][dogs], [The Cat API][cats], and the [Random User Data Generator API][randomuser].

Since web APIs are really just websites, you can access them yourself just by going to the url. For example, go to `/breeds/` endpoints of the [The Dog API][breeds]. If you do you will see a wall of text in the form of a json file that lists out every dog breed:

```
[{"weight":{"imperial":"6 - 13","metric":"3 - 6"},"height":{"imperial":"9 ...
```

But remember the P in API stands for programming, meaning that we can programatically access and use this data. For example, we can use this data, which includes information about the personality, size, and weight of the breeds, in conjunction with some personality questions to help people decide what is the best type of dog for them. Even in this silly example, it really shows how fun APIs can be; they just really on someone have some really creative usecase or way to visualize that data, and you have a million dollar idea on your hands. Or at least something cool to talk about next time you are at the bar with friends. 

Now that you know have a sense of what an API is, let's figure out how to use them. P.S. if you are still feeling confused here are several links to videos and blogs to help you get a better grasp of the concept, just remember at their core, APIs are just urls used to access data, its what you do with that data that makes it special. 

<!--
## RESTful APIs

RESTful APIs are the current gold standard, though GraphQL is an upcoming popular alternative. For now though, since most of the time you will interact with a RESTful API and because they are a bit easier, we will start here. 

An API is said to be RESTful (REST stands for REpresentational State Transfer) if it adheres to several [constraints][restful]. These constraints are quite technical and beyond the scope of this post, but you can find more information [here][restful] and [here][imbrest] for those interested. 
-->

## Requests and Responses

We will be using the python `requests` module for this, but do note this same structure will work for any language that can make HTTP requests including JavaScript and even bash using `curl` or `wget` (similarly advanced python users may prefer the `httpx` module for its increase performance and async compatibility). Once you are in the appropriate [environment](python.md#virual_environment) ensure that you have the requests installed:

```cli
pip install requests
```

This package is aptly named because HTML, therefore APIs, have a `request` `response` cycle. Where we will make a `request` and get back a `response`. Just like on a website. The `request` is going to the website and hitting enter and the response is the HTML that gets loaded on the page (not the extra changes that happen after the JS and CSS are loaded). Let's see it in action:

```python
import requests

endpoint = "https://api.thedogapi.com/v1/breeds/"
response = requests.get(endpoint)

response.text
# Output: [{"weight":{"imperial":"6 - 13","metric":"3 - 6"}, ...
```
If you have been following along you will notice this is the same information that you recieved when you accessed the website directly. Again, the beautiful things is now that we can access this via code, we can then use that data in any systematic way we want; you are only limited by your imagination. 

### Headers

### HTTP Methods

## API Keys

### OAuth2.0

## Homework


## References

[ibmrest]: https://www.ibm.com/cloud/learn/rest-apis "IBM REST APIs Def"
[restful]: https://www.redhat.com/en/topics/api/what-is-a-rest-api "RHEL RESTFUL"
[real]: https://realpython.com/python-api/ "Real Python: APIs"
[debug]: https://stackoverflow.com/a/24588289 "Debugging by loggin headers"
[mozheaders]: https://developer.mozilla.org/en-US/docs/Glossary/Request_header "Mozilla Request Headers"
[mozmessages]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Messages "Mozilla Messages"
[realhttps]: https://realpython.com/python-https/ "Real Python: HTTPs"

### Examples

[images]: https://lorem.space/api "Public Random Images API"
[dogs]: https://api.thedogapi.com/ "The Dog API"
[breeds]: https://api.thedogapi.com/v1/breeds "Dog Breeds"
[dogsdocs]: https://docs.thedogapi.com/api-reference/breeds/breeds-list "Docs for Dog APIs"
[cats]: https://api.thecatapi.com/ "The Cat API"
[randomuser]: https://randomuser.me/api/ "Generate Random Users"
[randomuserdocs]: https://randomuser.me/ "Docs: Generate random users"
[anything]: https://httpbin.org/anything "Redirect service to help out"
