---
layout: page
title: Resources
sidebar:
  - title: Jump to
    resources: true
---

{% for resource in site.resources %}
  <h2 id="{{ resource.title | url_encode }}">{{ resource.title }}</h2>

  {{ resource.content }}
{% endfor %}
