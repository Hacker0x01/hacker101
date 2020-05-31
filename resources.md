---
layout: page
title: Resources
---

<div id="accordion">
{% for resource in site.resources %}
<div class="card">
  <div class="card-header" id="heading{{ forloop.index }}" data-toggle="collapse" data-target="#collapse{{ forloop.index }}" aria-expanded="false" aria-controls="collapse{{ forloop.index }}">
    <h5 class="mb-0" class="text-white">
      {{ resource.title }}
    </h5>
  </div>
  <div id="collapse{{ forloop.index }}" class="collapse" aria-labelledby="heading{{ forloop.index }}" data-parent="#accordion">
    <div class="card-body">
      {{ resource.content }}
    </div>
  </div>
</div>
{% endfor %}
</div>

<script>
var url = document.location.toString();
if (url.match('#'))
  $('#heading'+url.split('#')[1].substring(0, 3)).click();
</script>
