

##### **Work**

* **Wayfair LLC** : *Cloud Engineer* : __Feb 2017 - Feb 2021__
  <p>
  TODO
  </p>

* **Wayfair LLC** : *Systems Engineer IV* : __March 2016 - Feb 2017__
  <p>
  TODO
  </p>

* **Wayfair LLC** : *Systems Engineer III* : __March 2015 - March 2016__
  <p>
  TODO
  </p>

* **Wayfair LLC** : *Systems Engineer II* : __Jan 2014 - March 2015__
  <p>
  TODO
  </p>

* **Wayfair IE/UK** : *Systems Engineer I* : __Jul 2011 - Jan 2014__
  Acted as Local and sole Tech Resource for all European Offices based in London, Galway and Berlin.  Worked on infrastructural optimization to expand and improve the European access to our US-based services and Data Centres.  Ensured day-to-day uptime of all critical services for each office.  Acted as contact point for all tech-related items resulting from all EU Office plans and expansions.  Improved local Backup and disaster recovery procedures per office.  Acted as on-site resource during Office transition/relocation periods and ensure provision of all required tech resources within these deadlines.

* **Active Technology Ltd.** : *IT Consultant/Technician* : __Jul 2009 – Jul 2011__
  <p>
  Installed and maintained network based CCTV, Intruder Alarms and Access Control Systems.  Provided IT consultancy and IT Support for customer based systems.
  Discussed and planned customer IT requirements on site.
  </p>

* **Postgraduate Researcher** : *University of Limerick* : __Oct 2008 – Jul 2009__
  <p>
  Worked as part of a small research team developing an interactive tutoring environment for use in primary school education.  Investigating modern techniques for the use of interpretation of spoken statements into a query that can be processed and responded to by a computer.  The simplest way to describe it is Google Assistant/Amazon Alexa before it was a thing.
  </p>
------
##### **Personal Projects**

* **[Kubernetes at Home]({{ site.baseurl }}/2021/k8s-at-home-pt-1/)** : Kubernetes cluster at home to handle home automation, managed with Flux, GitOps.
* **[Unity3D Floorplan, MQTT & you]({{ site.baseurl }}/2021/home-assistant-and-unity/)** : Render your home floorplan in 3D, real time monitor and visualize events.
* **Utility Monitoring** : Passively tracking Utility metrics via RTLAMR and InfluxDB.
* **Setting up a Magic Mirror** : Setting up a magic mirror and the home automation goodness that comes with it!

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