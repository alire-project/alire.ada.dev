---
title: Tags
description: "Index of crate tags"
layout: page
popular: 3
---

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
[{{ tag }}]({{ site.baseurl }}/search/?q={{ tag }}){:.crate-tag-link}{% endfor %}

{% assign alphabet= "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 0 1 2 3 4 5 6 7 8 9" | split: ' ' %}
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
[{{ tag }}]({{ site.baseurl }}/search/?q={{ tag }}){:.crate-tag-link}{% endfor %}
    {% endif %}
{% endfor %}

{{ site.data.tags.size }} unique tags.
