

##### **Work**

* **Company** : *Title* : __2008 to present__
	Detail goes here

------
##### **Projects**

* **[Kubernetes at Home]({{ site.baseurl }}/2021/k8s-at-home-pt-1/)** : Kubernetes cluster at home to handle home automation, managed with Flux, GitOps

------
##### **Education**

* **Bachelor of Science (Information Systems)** : *2004 to 2008*
	[University of Limerick, Ireland](https://www.ul.ie/)
------

{% assign languages = 'golang,ruby,html,css,powershell,python' | split: ',' %}
{% assign tools = 'ansible,puppet,terraform' | split: ',' %}

{% for tag in site.tags -%}
{% assign kv = tag[0] | split: ":" -%}
  {% if kv.size == 2 and kv[0] == "tool" -%}    
    {% assign tools = tools | push: kv[1] %}  
  {% endif %}
  {% if kv.size == 2 and kv[0] == "language" -%}
    {% assign languages = languages | push: kv[1] %}
  {% endif %}
{% endfor -%}

------
##### **Tools**
<div class="tool">
{% assign sorted_tools = tools | uniq -%}
{% for tool in sorted_tools -%}
  <a href="{{ site.baseurl }}/tags/#{{ tool }}">{{ tool | downcase }}</a>
{% endfor -%}
</div>
------

##### **Languages**
<div class="language">
{% assign sorted_languages = languages | uniq -%}
{% for language in languages -%}
  <a href="{{ site.baseurl }}/tags/#{{ language }}">{{ language | downcase }}</a>
{% endfor -%}
</div>