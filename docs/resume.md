

##### **Work**

* **Wayfair LLC** : *Systems Engineer III/IV/Cloud Engineer* : __Jan 2014 - Feb 2021__
  <br><br>
  <p>
    Relocated to the companies HQ based in Boston in 2014.  For a couple of years, I managed a small team of engineers focused on projects. Became interested in automation, configuration management and infrastructure provisioning.  Migrated under the SRE team and got involved in figuring out the management of our windows environment via DSC.  This expanded into figuring IAC responsibilities.  Worked heavily in Terraform Provider and module development to handle and flatten provisioning of infrastucture in our private and public environments.
  </p>
  {% assign skills    = 'ansible,puppet,terraform,vagrant,vault,consul,kubernetes,helm,dsc,gcp,packer,ci,docker,git' | split: ',' | uniq | sort -%}
  {% assign languages = 'golang,python,powershell,hcl,sql' | split: ',' | uniq | sort -%}
  {% assign others    = 'shell,windows,centos,esxi,cisco,networking' | split: ',' | uniq | sort -%}

  <div style="display: inline" class="language-small">
    {% for language in languages -%}
      <a href="{{ site.baseurl }}/tags/#{{ language }}">{{ language | downcase }}</a>
    {% endfor -%}
  </div>
  <div style="display: inline" class="tool-small">
    {% for skill in skills -%}
      <a href="{{ site.baseurl }}/tags/#{{ skill }}">{{ skill | downcase }}</a>
    {% endfor -%}
  </div>
  <div style="display: inline" class="tags-small">
    {% for other in others -%}
      <a href="{{ site.baseurl }}/tags/#{{ other }}">{{ other | downcase }}</a>
    {% endfor -%}
  </div>

  <br><br>

* **Wayfair IE/UK** : *Systems Engineer I/II* : __Jul 2011 - Jan 2014__
  <br><br>
  <p>
    Acted as Local and Tech Resource for all European Offices based in London, Galway and Berlin.  Anything tech related on this side of the pond, a.k.a Lots of hats.
    This generally involved travelling to remote sites and provisioning any and all infrastructure necessary to bring the site up.
  </p>
  {% assign skills    = 'sccm,active-directory,vsphere' | split: ',' | uniq | sort -%}
  {% assign languages = 'powershell' | split: ',' | uniq | sort -%}
  {% assign others    = 'shell,datacenter,windows,esxi,networking,storage,os-provisioning' | split: ',' | uniq | sort -%}

  <div style="display: inline" class="language-small">
    {% for language in languages -%}
      <a href="{{ site.baseurl }}/tags/#{{ language }}">{{ language | downcase }}</a>
    {% endfor -%}
  </div>
  <div style="display: inline" class="tool-small">
    {% for skill in skills -%}
      <a href="{{ site.baseurl }}/tags/#{{ skill }}">{{ skill | downcase }}</a>
    {% endfor -%}
  </div>
  <div style="display: inline" class="tags-small">
    {% for other in others -%}
      <a href="{{ site.baseurl }}/tags/#{{ other }}">{{ other | downcase }}</a>
    {% endfor -%}
  </div>

  <br><br>

* **Active Technology Ltd.** : *IT Consultant/Technician* : __Jul 2009 – Jul 2011__
  <br><br>
  <p>
  Handled the IT side of CCTV, Intruder Alarms and Access Control Systems installs.  Provided general IT consultancy and Support for customer-based systems.
  </p>
  {% assign skills    = 'networking,storage' | split: ',' | uniq | sort -%}
  {% assign languages = 'powershell' | split: ',' | uniq | sort -%}
  {% assign others    = 'shell' | split: ',' | uniq | sort -%}

  <div style="display: inline" class="language-small">
    {% for language in languages -%}
      <a href="{{ site.baseurl }}/tags/#{{ language }}">{{ language | downcase }}</a>
    {% endfor -%}
  </div>
  <div style="display: inline" class="tool-small">
    {% for skill in skills -%}
      <a href="{{ site.baseurl }}/tags/#{{ skill }}">{{ skill | downcase }}</a>
    {% endfor -%}
  </div>
  <div style="display: inline" class="tags-small">
    {% for other in others -%}
      <a href="{{ site.baseurl }}/tags/#{{ other }}">{{ other | downcase }}</a>
    {% endfor -%}
  </div>

  <br><br>

* **Postgraduate Researcher** : *University of Limerick* : __Oct 2008 – Jul 2009__
  <br><br>
  <p>
  Worked as part of a small research team developing an interactive tutoring environment for use in primary school education.  Investigating modern techniques for the use of interpretation of spoken statements into a query that can be processed and responded to by a computer.  The simplest way to describe the goal is a very simple Google Assistant/Amazon Alexa for education before it was so readily available.
  </p>

  {% assign skills    = 'networking' | split: ',' | uniq | sort -%}
  {% assign languages = 'java,python' | split: ',' | uniq | sort -%}
  {% assign others    = 'shell,distributed-computing' | split: ',' | uniq | sort -%}

  <div style="display: inline" class="language-small">
    {% for language in languages -%}
      <a href="{{ site.baseurl }}/tags/#{{ language }}">{{ language | downcase }}</a>
    {% endfor -%}
  </div>
  <div style="display: inline" class="tool-small">
    {% for skill in skills -%}
      <a href="{{ site.baseurl }}/tags/#{{ skill }}">{{ skill | downcase }}</a>
    {% endfor -%}
  </div>
  <div style="display: inline" class="tags-small">
    {% for other in others -%}
      <a href="{{ site.baseurl }}/tags/#{{ other }}">{{ other | downcase }}</a>
    {% endfor -%}
  </div>

  <br><br>

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