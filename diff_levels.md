---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: page
title: Difficulties
permalink: /diff
---


Below you will find a list of all the Topics I have discussed.
Of course a blog may cover multiple topics, so they are listed under all relevant sections.


## Beginner

## Intermediate

## Advanced

## Expert

{% assign sorted = site.tags | sort %}
{% for tag in sorted %}
## {{ tag[0] | split: "-" | join: " "}}
  <ul>
    {% for post in tag[1] %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}
