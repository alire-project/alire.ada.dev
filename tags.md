---
title: Tags
description: "Index of crate tags"
layout: page
permalink: /tags/
popular_count: 10
---

<script>
var ul_last;

function filter_ul(ul_id) {
    var ul;

    // Hide list items in last unordered list
    if (ul_last != null) {
       ul = document.getElementById(ul_last);
       ul.style.display = "none";
    }

    // Show unordered list ul_id
    ul = document.getElementById(ul_id);
    ul.style.display = "block";

    ul_last = ul_id;
}
</script>

<style>
ul {
    display: none;
}
</style>

{% capture tags_with_count %}
  {% for tag in site.data.tags %}
    {{ tag.crates.size | plus: 1000000 }}#{{ tag.name }}#{{ tag.crates.size }}
  {% endfor %}
{% endcapture %}

{% assign sorted_popular_tags = tags_with_count | split:' ' | sort | reverse %}
{% assign top_popular_tags = sorted_popular_tags | slice: 0, page.popular_count %}

### Top {{ page.popular_count }} Tags
<div style="white-space: nowrap;">
{% for tag in top_popular_tags %}
{% assign tagitems = tag | split: '#' %}
{% assign name = tagitems[1] %}
{% assign count = tagitems[2] %}
<a class="crate-tag-link" href="javascript:void(0)" onclick="javascript:filter_ul('tag-top-{{ name }}')">{{name}}({{count}})</a>{% endfor %}
</div>

{% for tag in top_popular_tags %}
    {% assign tagitems = tag | split: '#' %}
    {% assign name = tagitems[1] %}
<ul id="tag-top-{{ name }}" class="crate_list">
    {%- for crate in site.crates -%}
        {%- if crate.tags contains name %}
<li><a href="{{ base_url }}/crates/{{ crate.crate }}">{{ crate.title }}</a> - {{ crate.short_description }}</li>
{%- endif %}{%- endfor %}
</ul>
{% endfor %}

<br>
### All Tags
{% assign alphabet= "0 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z" | split: ' ' %}
{% for letter in alphabet %}
    {% capture filtered_tags %}
        {% for tag in site.data.tags %}
            {% assign tag_first_letter = tag.name | upcase | slice: 0 %}
            {% if tag_first_letter == letter %}
            {{ tag.name }}
            {% endif %}
        {% endfor %}
    {% endcapture %}
    {% assign filtered_list = filtered_tags | split: ' ' | sort %}

    {% if filtered_list.size > 0 %}
<b>{{ letter }}</b>
<div style="white-space: nowrap;">
{% for tag in filtered_list %}
<a class="crate-tag-link" href="javascript:void(0)" onclick="javascript:filter_ul('tag-{{ tag }}')">{{ tag }}</a>{% endfor %}
</div>

        {% for tag in filtered_list %}
<ul id="tag-{{ tag }}" class="crate_list">
            {%- for crate in site.crates -%}
                {%- if crate.tags contains tag %}
<li><a href="{{ "crates/" | append: crate.crate | downcase | relative_url }}">{{ crate.title }}</a>: {{ crate.short_description }}</li>
{%- endif %}{%- endfor %}
</ul>
{% endfor %}
<p></p>
    {% endif %}
{% endfor %}

{{ site.data.tags.size }} tags.
