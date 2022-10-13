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
##  {{level.title}}
  <ul>
{% for post in site.posts %}
{% if post.series == level.id %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
{% endif %}
{% endfor %}
  </ul>
{% endfor %}

