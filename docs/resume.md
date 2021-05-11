

#### **Work**

* **Company** : *Title* : __2008 to present__
	Detail goes here

------
#### **Education**

* **Bachelor of Science (Information Systems)** : *2004 to 2008*
	[University of Limerick, Ireland](https://www.ul.ie/)

------
#### **Projects**

* **Some Project** : Project Description goes here

{% assign tags = site.tags | sort -%}
------
#### **Tools**
<div class="tool">
{% for tag in tags -%}
{% assign kv = tag[0] | split: ":" -%}
  {% if kv.size == 2 and kv[0] == "tool" -%}
  <a href="{{ site.baseurl }}/tags/#{{ kv[1] }}">{{ kv[1] }}</a>
  {% endif %}
{% endfor -%}
</div>
------

#### **Languages**
<div class="language">
{% for tag in tags -%}
{% assign kv = tag[0] | split: ":" -%}
  {% if kv.size == 2 and kv[0] == "language" -%}
  <a href="{{ site.baseurl }}/tags/#{{ kv[1] }}">{{ kv[1] }}</a>
  {% endif %}
{% endfor -%}
</div>