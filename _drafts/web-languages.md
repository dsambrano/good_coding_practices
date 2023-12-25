

## Languages of the Web

`HTML` (HyperText Markup Langage) - Is the skeloton this creates the actual text, but more importantly the structure for the entire webpage
`CSS` (Cascading Style Sheets) - Stylizes the Webpage, this adds the colors, borders, shading etc. This is how you make your website pretty
`JavaScript` - JS is how you make your webpage interactive.

### `HTML`

```html
<!DOCTYPE html>
<html>
    <!-- This is a comment in HTMl anything between the arrows is not read by the computer -->
    <head>
        <!-- Provided meta data information like linking all the CSS/JS files and specifying the Webpage title author etc -->
    </head>
    <body>
        <!-- Here is where the actual content goes -->
    </body>
</html>
```

As you can see `HTML` is organized by tag's with the `<>` structure.
Additionally, they usually come in pairs which can be distringuished with the `/`. 
The closing tag contains the `/`.

In modern web development you write very little `HTML` by hand, and typically rely on your framework, so we won't go too deep here, but I will say it would be helpful to get some familiarity with the basic tags.
Also if you plan on doing any webscraping it would be valuable to know how HTML is organized.

- `<main></main>` - Large content area where the main thing should be separating it from things like the footer and nav bar
- `<section></section>` - Helps organize your content into meaningful sections
- `<div></div>` - Smaller organizational unit which helps for additional organization but at a smaller scale
- `<span></span>` - The smalles organizational unit for more organization
- `<p></p>` - make paragraphs
- `<img></img>` - for images
- `<a></a>` - to make whats inside a like (even if its another tag like a `img`)

When creating these tags, we often can add additional information to them for example:

```html
<div class="border round" id="mydiv">
    <!-- Content Goes here -->
</div>
```

Adding properties like some class and an id can help you apply some by a grouping (classes) or to add additional unique styling (id).
Similar these attirbutes can be used with JS.
To get you up and running I have saved a very basic `HTML` file for you.
Make a folder on your computer save this file to that folder titled `index.html`.
Once you double click it, it should automatically open in your default web browser.

### `CSS`

Now that we have that up and running we can get some very basic CSS going.

The basic idea for `css` is that is applies differnt styles either to specific tag, classes, or id, which is why its so helpful to create them in the beginning.

```css
/* This is a comment in CSS */
/* the stuff between the {} apply to all div tags on the page */
div {
    border: 2px solid red;
    border-radius: 5px; /* rounds the borders so they are not a rectangle */
}

/* Starting with a period (.) indicates you are applying to all classes with that name e.g., .big applies to all tags with that class big */
.big {
    font-size: 2em; /* alternatives can also be a set size as well as a host of other measurement options */
    color: blue; /* can also take hex with #FFFFFF or rgb with rgb(255, 255, 255) or even rgba(255, 255, 255, 100) for some transparency */
}

/* Starting with a period (#.) indicates you are applying to a specific id */
#highlight{
    color: red;
}
```

This might seem overwhelming at first, but I promise if you just mess around with it you will get the hang of it.
And when it doubt, Google is your friend, you can also good how do I change ... in `css`.
