---
layout: page
title: Tags
permalink: /tags/
---

{% for tag in site.tags %}{% assign tagname = tag[0] %}[#{{ tagname }}](#{{ tagname }}) {% endfor %}

{% for tag in site.tags %}
### {{ tag[0] }}
{{ tag[1] | size }} posts
  {% for post in tag[1] %}
 - [{{ post.title }}]({% include relative %}{{ post.url }})
  {% endfor %}
{% endfor %}