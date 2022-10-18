---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: page
title: Series
permalink: /series
---


Below you will find a list of all the series that I have.
These are great for long session really honing in a particular topic.


{% for level in site.data.series %}
{% assign contains_posts=false %}
{% assign title=true %}
{% for post in site.posts reversed %}
{% if post.series == level.id %}
  {% assign contains_posts=true %}
  {% if contains_posts %}
  {% if title %}
  {% assign title=false %}
##  {{level.title}}
  <p>{{level.description}}</p>
  <ol start=0>
  {% endif %}
  {% endif %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
{% endif %}
{% if forloop.last and contains_posts %}
  </ol>
{% endif %}
{% endfor %}
{% endfor %}

