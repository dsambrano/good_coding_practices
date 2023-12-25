# APIs

## Takeaways

**[Estimated Read Time 20 mins]**

In this blog you will learn the basics of APIs. Specifically you will learn:
- What an API is
- How to you use APIs
- API Keys/Authentication

Difficulty: <span style="color:yellow">Intermediate</span>

Prerequisites:
- Basic Familiarity with Python (or JavaScript)

## What are APIs?

[APIs][real] or Application Programming Interface are a way for a client (an App/website or some code that you have written) to access data from a server. For example, every morning you might check the weather. Obviously, your phone does not actually know what the weather is going to be. Instead your phones sends an API request to the Weather Channel server to request the data. The Weather App on your phone then has extra code to visualize the data in an interesting way with animations etc. The web API is this interaction between your phone and the Weather Channel server. And as you can imagine there is a specific *interface* (or structure) the communication should take place.

> **Note**: This is specific to web API which are by far the most common, but nearly everything that is coded is an API as well. For example, the Python language has APIs to perform actions (these are called functions). They are shorthand for you to have the machine do something in a programmatic way.

There are hundreds and hundreds of public APIs. These are APIs that anyone can access free of charge. Some examples include [The Dog API][dogs], [The Cat API][cats], and the [Random User Data Generator API][randomuser].

Since web APIs are really just websites, you can access them yourself just by going to the url. For example, go to `/breeds/` endpoints of the [The Dog API][breeds]. If you do you will see a wall of text in the form of a json file that lists out every dog breed:

```json
[{"weight":{"imperial":"6 - 13","metric":"3 - 6"},"height":{"imperial": ...}}]
```

But remember the P in API stands for programming, meaning that we can programatically access and use this data. For example, we can use this data, which includes information about the personality, size, and weight of the breeds, in conjunction with some personality questions to help people decide what is the best type of dog for them.
Even in this silly example, it really shows how fun APIs can be; they just rely on someone having some really creative use case or way to visualize that data, and you have a million dollar idea on your hands.
Or at least something cool to talk about next time you are at the bar with friends.

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

This package is aptly named because HTML, therefore APIs, have a `request` `response` cycle. Where we will make a `request` and give back a `response`. Just like on a website. The `request` is going to the website and hitting enter and the response is the HTML that gets loaded on the page (not the extra changes that happen after the JS and CSS are loaded). Let's see it in action:

```python
import requests

base_url = "https://api.thedogapi.com/v1/"  # The base website for the API
endpoint = "breeds/"  # Then endpoint typically provides information about what specific data you are requesting (here about the different breeds)
full_url = f"{base_url}{endpoint}"  
response = requests.get(full_url)

response.text  # response.json() is another one that tends to be useful
# Output: [{"weight":{"imperial":"6 - 13","metric":"3 - 6"}, ...
```

If you have been following along you will notice this is the same information that you recieved when you accessed the website directly.
Again, the beautiful things is now that we can access this via code, we can then use that data in any systematic way we want; you are only limited by your imagination.

### HTTP Methods

Below are the 3 basic HTTP methods, where 99% of the time you will use `GET`:

```bash
GET # Retreived data (or the website)
POST # Attempts to send data to the serve (Requires authentication)
DELETE # The obvious (Requires authentication)
```

The methods in the `request` library all match the HTTP methods so they will be easy to remember.

## API Keys

Most modern APIs want a little more information an control over who is trying to use their data.
So it is very common for you to have to create and use an API key when trying to use an API (especially if you want to request user data).
Unfortunately, most APIs differ on the details, looking they all have a common basic structure.

You go the api/dev subdomain.
Typically its one of the following (api.WEBSITE or dev.WEBSITE etc) for example Spotify's is [developer.spotify.com][spotify-api-getting-started].
Once you are at the dev portal, here are the basic steps:

- Create a developer account (if necessary sometimes they can use your regular account)
- From the develop portal create an app (usually just a button) that tells the API that you have a program that will be requesting information
- Request an API Key (sometimes called Access Tokens) for that specific app.
- Specify a Scope for that API Key (this tells the users what information if any will be accessible to *your* app)
- Finally, add the API Key to all of your future requests

Now that you know the basic structure, we can follow through with a simple example for spotify.

### Headers

But where do you provided your API keys?
How do you give them to server?
Also HTTP requests have multiple components.
One of those components is called the header, which is where you store meta data as well as the API keys when relevant.
Here is a template in python

```python
import requests

# Every API has slightly different requirements for how to send the API information
# So unforunately you need to read the docs, but here is a basic structure
headers = {"Authenticaion Token": "YOUR_SUPER_SECRET_KEY_THAT_YOU_SHOULD_NOT_SHARE_WITH_ANYONE"}
full_url = "URL"
response = requests.get(full_url, headers=headers)
```

The astute observes my wonder, if you are not supposed to share the API key, how can you save it directly to the code.
That's a great question, the answer is that you do not.
Instead you should be storing in a file that is not track by git (or your VCS) typically we use `.env` and in python you can safely load that in without anyone ever seeing it.
Then any computer using this, whether its multiple team members or one on multiple comptures can store a separate key per computer.
Keeping them separate it good for security incase on accidently gets leaked, you don't need to trash them all.
Below is an updated template, but requires you to install `python-dotenv` into your environment.

```python
import requests
from dotenv import load_dotenv
import os

load_dotenv()  # loads variables in from the .env file to your global os environments
ACCESS_TOKEN = os.getenv("API_KEY") # Pull the vari
headers = {"Authenticaion": f"Bearer: {ACCESS_TOKEN}"}
full_url = "URL"
response = requests.get(full_url, headers=headers)

```

And the `.env` file should look something like this:

```bash
API_KEY=YOUR_SUPER_SECRET_KEY # Replace with your key
```

### OAuth2.0

Here is advanced topic, and while I don't have time to properly cover it here, I do think its worth addressing, until I have a more full dedicated post for.
Let's start by identifying the problem that is being solved with OAuth2.0.
Imagine, you want to use the Spotify API to see your own or some users play history to make some reccomendations for movies they would like (again the specific example is not the point so feel free to replace it with one more relevant to you!).
Well how are you going to get the users play history?
Spotify wouldn't just hand it out willy nilly, would they (God I hope not 😲).
No they wouldn't, they would need to make sure you have persmission by the user to access that protected data.
But you can't just ask the user to give you their username and password (if an app does that 🏃 run away...).
Instead there needs to be some set of instructutions to allow the users to sign into their account and verify that they are willing to share whatever access you are requesting (in this case, their play history).

That is what OAuth2.0 is designed to do.
OAuth2.0 is a protocol designed to securely share that information between the user, the client (your app requesting user data), and the server (the app or website the data is being requested from: in the example Spotify).
The most basic version of this which is becoming quite comon is where you login into a website using your Google credentials (this only requires basic user data, but its still implementing the same protocol).

## Homework


## References

[ibmrest]: https://www.ibm.com/cloud/learn/rest-apis "IBM REST APIs Def"
[restful]: https://www.redhat.com/en/topics/api/what-is-a-rest-api "RHEL RESTFUL"
[real]: https://realpython.com/python-api/ "Real Python: APIs"
[debug]: https://stackoverflow.com/a/24588289 "Debugging by loggin headers"
[mozheaders]: https://developer.mozilla.org/en-US/docs/Glossary/Request_header "Mozilla Request Headers"
[mozmessages]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Messages "Mozilla Messages"
[realhttps]: https://realpython.com/python-https/ "Real Python: HTTPs"
[spotify-api-getting-started]: https://developer.spotify.com/documentation/web-api/tutorials/getting-started

### Examples

[images]: https://lorem.space/api "Public Random Images API"
[dogs]: https://api.thedogapi.com/ "The Dog API"
[breeds]: https://api.thedogapi.com/v1/breeds "Dog Breeds"
[dogsdocs]: https://docs.thedogapi.com/api-reference/breeds/breeds-list "Docs for Dog APIs"
[cats]: https://api.thecatapi.com/ "The Cat API"
[randomuser]: https://randomuser.me/api/ "Generate Random Users"
[randomuserdocs]: https://randomuser.me/ "Docs: Generate random users"
[anything]: https://httpbin.org/anything "Redirect service to help out"
