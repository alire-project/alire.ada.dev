---
title: Crates
layout: page
---
<style>
#crate_item {
    display: block;
    width: 33%;
    float: left;
}
</style>
<ul>
  {% for crate in site.crates %}
    <li id="crate_item">
      <a href="{{ crate.url | relative_url }}">{{ crate.title }}</a>
    </li>
  {% endfor %}
</ul>
