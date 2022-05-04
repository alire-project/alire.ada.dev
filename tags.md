---
title: Tags
description: "Index of crate tags"
layout: page
permalink: /tags/
popular_count: 10
---

<script>
var ul_last;

function filter_ul(ul_id, li_id) {
    var ul, li;

    // Hide list items in last unordered list
    if (ul_last != null) {
       ul = document.getElementById(ul_last);
       li = ul.getElementsByTagName("li");
       for (i = 0; i < li.length; i++) {
           li[i].style.display = "none";
       }
    }

    // Show list items in li_id in unordered list ul_id
    ul = document.getElementById(ul_id);
    li = ul.getElementsByTagName("li");
    for (i = 0; i < li.length; i++) {
        if (li[i].id == li_id) {
            li[i].style.display = "list-item";
        } else {
            li[i].style.display = "none";
        }
    }

    ul_last = ul_id;
}
</script>

<style>
.crate_list li {
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
<a class="crate-tag-link" href="javascript:null" onclick="javascript:filter_ul('section-Popular','tag-{{ name }}')">{{name}}({{count}})</a>{% endfor %}
</div>

<ul id="section-Popular" class="crate_list">
{% for tag in top_popular_tags %}
    {% assign tagitems = tag | split: '#' %}
    {% assign name = tagitems[1] %}
    {%- for crate in site.crates -%}
        {%- if crate.tags contains name-%}
<li id="tag-{{ name }}"><a href="{{ base_url }}/crates/{{ crate.crate }}">{{ crate.title }}</a> - {{ crate.short_description }}</li>
{% endif %}{% endfor %}{% endfor %}
</ul>

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
<a class="crate-tag-link" href="javascript:null" onclick="javascript:filter_ul('section-{{ letter }}','tag-{{ tag }}')">{{ tag }}</a>{% endfor %}
</div>

<ul id="section-{{ letter }}" class="crate_list">
        {% for tag in filtered_list %}
            {%- for crate in site.crates -%}
                {%- if crate.tags contains tag -%}
<li id="tag-{{ tag }}"><a href="{{ "crates/" | append: crate.crate | downcase | relative_url }}">{{ crate.title }}</a>: {{ crate.short_description }}</li>
{% endif %}{% endfor %}{% endfor %}
</ul>
    {% endif %}
{% endfor %}

{{ site.data.tags.size }} tags.
