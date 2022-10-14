---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: page
title: Difficulties
permalink: /diff
---


Below you will find a list of all the Topics I have discussed.
Of course a blog may cover multiple topics, so they are listed under all relevant sections.

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

