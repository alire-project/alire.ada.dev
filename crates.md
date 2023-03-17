---
title: Crates
layout: page
---

<ul class="nav justify-content-start">
<li class="nav-item"><a class="nav-link" href="/network">Network Graph</a></li>
<li class="nav-item"><a class="nav-link" href="/tags/">Tags</a></li>
</ul>
<br>

{% assign alphabet= "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z" | split: ' ' %}
{% for letter in alphabet %}
     {% capture filtered_crates %}
         {% for crate in site.crates %}
             {% assign crate_first_letter = crate.title | slice: 0 %}
             {% if crate_first_letter == letter %}
             {{ crate.title }}
             {% endif %}
         {% endfor %}
     {% endcapture %}
    {% assign filtered_list = filtered_crates | split: ' ' %}
    {% if filtered_list != empty %}
<b>{{ letter }}</b>
<ul class="crate-list">
        {% for crate in filtered_list %}
            {% for item in site.crates %}
                {% if item.title == crate %}
                    {% assign short_description = item.short_description %}
                {% endif %}
            {% endfor %}
<li><a class="crate-link" href="{{ "crates/" | append: crate | downcase | relative_url }}">{{ crate }}</a> {{ short_description }}</li>
        {% endfor %}
</ul>
    {% endif %}

{% endfor %}
{{ site.crates.size }} crates.
From community branch `{{ site.data.update.index_branch }}`.
Alr `{{ site.data.update.alr_version }}`.
Alire Library `{{ site.data.update.alire_lib_version }}`.
