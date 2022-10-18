---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: page
title: Difficulties
permalink: /diff
---

Here is a list of all the posts I have created organized by the intended target audience.

For Beginner Posts, I assume absolutely nothing and the concepts are really simple and straight forward
For intermediate posts, you might be expected to know some basics about coding or they topic might just be a bit more challenging, but in general, these are also intended to be very acessible.
The Advanced Posts discuss some much more high level concepts, typically assume you have a pretty good knowledge of coding, but just want to improve or generally these posts will involve math.


{% for level in site.data.difficulty %}
##  {{level.name}}
  <ul>
{% for post in site.posts %}
{% if post.diff == level.id %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
{% endif %}
{% endfor %}
  </ul>
{% endfor %}

