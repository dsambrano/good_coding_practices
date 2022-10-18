---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: page
title: Topics
---

{% include sidebar.html %}

{% assign sorted = site.tags | sort %}
{% for tag in sorted %}
## {{ tag[0] | split: "-" | join: " "}}
  <ul>
    {% for post in tag[1] %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}
