---
title: Tags
description: "Index of crate tags"
layout: page
permalink: /tags/
popular: 3
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
            li[i].style.display = "block";
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

## {{ page.title }}

### Popular
{% capture popular_tags %}
    {% for tag in site.data.tags %}
        {% if tag.crates.size >= page.popular %}
            {{ tag.name }}
        {% endif %}
    {% endfor %}
{% endcapture %}
{% assign filtered_pop_list = popular_tags | split: ' ' | sort %}

{% for tag in filtered_pop_list %}
<a class="crate-tag-link" href="#popular" onclick="filter_ul('section-Popular','tag-{{ tag }}')">{{ tag }}</a>{% endfor %}

<ul id="section-Popular" class="crate_list">
{% for tag in filtered_pop_list %}
    {%- for crate in site.crates -%}
        {%- if crate.tags contains tag -%}
<li id="tag-{{ tag }}"><a href="{{ base_url }}/crates/{{ crate.crate }}">{{ crate.title }}</a> - {{ crate.short_description }}</li>
{% endif %}{% endfor %}{% endfor %}
</ul>

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

### {{ letter }}

        {% for tag in filtered_list %}
<a class="crate-tag-link" href="#{{ letter | downcase }}" onclick="filter_ul('section-{{ letter }}','tag-{{ tag }}')">{{ tag }}</a>{% endfor %}

<ul id="section-{{ letter }}" class="crate_list">
        {% for tag in filtered_list %}
            {%- for crate in site.crates -%}
                {%- if crate.tags contains tag -%}
<li id="tag-{{ tag }}"><a href="{{ base_url }}/crates/{{ crate.crate }}">{{ crate.title }}</a> - {{ crate.short_description }}</li>
{% endif %}{% endfor %}{% endfor %}
</ul>
    {% endif %}
{% endfor %}

{{ site.data.tags.size }} tags.
