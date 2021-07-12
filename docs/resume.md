##### **Work Experience**

<table>
<tr>
<th>Wayfair<br>Boston, MA</th>
<th>Systems Engineer III/IV<br>Cloud Engineer</th>
<th>Jan 2014 to Feb 2021</th>
</tr>
<tr><td colspan="3">
* Developed and Maintained Infrastructure as code for private/public cloud environments.
* Established cost estimation processes for private/public cloud environments.
* Developed custom terraform module and provider tooling CI/CD strategy for use in IaC deployments.
* Developed various automations and services to support infrastructure pipeline.
* Developed tooling to support private cloud infrastructure provisioning.
* Developed tooling and pipeline to enable developers to self-service infrastructure as required.
</td></tr>

<tr>
<th>Wayfair<br>Ireland, UK, Boston</th>
<th>Systems Engineer I/II<br>Projects Team Manager</th>
<th>Jul 2011 to Jan 2024</th>
</tr>
<tr><td colspan="3">
* Tech Resource for all European Offices based in London, Galway and Berlin
* Managed a team of IT Engineers/Projects Team
* Responsible for OS/Application Deployment for all Offices 
</td></tr>

<tr>
<th>Active Technology Ltd<br>Clare, Ireland</th>
<th>IT Consultant<br>Technician</th>
<th>July 2009 to July 2011</th>
</tr>
<tr><td colspan="3">
* Handled the IT side of CCTV, Intruder Alarms and Access Control Systems installs.
* Provided general IT consultancy and Support for customer-based systems.
</td></tr>

<tr>
<th>University of Limerick<br>Limerick, Ireland</th>
<th>Postgraduate Researcher</th>
<th>Oct 2008 to Jul 2009</th>
</tr>
<tr><td colspan="3">
* Worked as part of a small research team developing an interactive tutoring environment for use in primary school education.
* Investigating modern techniques for the use of interpretation of spoken statements into a query that can be processed and responded to by a computer.  
* The simplest way to describe the goal is a very simple Google Assistant/Amazon Alexa for education before it was so readily available.
</td></tr>
</table>

<br>
##### **Education and Training**

<table>
<tr><td>
* **Bachelor of Science (Information Systems)** : *2004 to 2008*
	[University of Limerick, Ireland](https://www.ul.ie/)
</td></tr>
</table>

<br>
##### **Skills**

{% assign skills    = 'sccm,active-directory,consul,jenkins,github,vsphere,ansible,puppet,terraform,vagrant,vault,kubernetes,helm,gcp,packer,ci,docker,git' | split: ',' | uniq | sort -%}
{% assign languages = 'java,golang,python,powershell,hcl,bash' | split: ',' | uniq | sort -%}
{% assign others    = 'windows,linux,esxi,cisco,documentation-as-code' | split: ',' | uniq | sort -%}

<table>
<tr>
<th>Languages</th>
<th>Tools</th>
<th>Other</th>
</tr>
<tr>
<td>
<div class="language-small">
  {% for language in languages -%}
    <a href="{{ site.baseurl }}/tags/#{{ language }}">{{ language | upcase }}</a>
  {% endfor -%}
  <br>
</div>
</td>
<td>
<div style="display: inline" class="tool-small">
  {% for skill in skills -%}
    <a href="{{ site.baseurl }}/tags/#{{ skill }}">{{ skill | upcase }}</a>
  {% endfor -%}
  <br>
</div>
</td>
<td>
<div style="display: inline" class="tags-small">
  {% for other in others -%}
    <a href="{{ site.baseurl }}/tags/#{{ other }}">{{ other | upcase }}</a>
  {% endfor -%}
  <br>
</div>
</td>
</tr>
</table>

<br>
##### **Personal Projects**

<table>
<tr><td>
* **[Kubernetes at Home]({{ site.baseurl }}/2021/k8s-at-home-pt-1/)** : Kubernetes cluster at home to handle home automation, managed with Flux, GitOps.
* **[Unity3D Floorplan, MQTT & you]({{ site.baseurl }}/2021/home-assistant-and-unity/)** : Render your home floorplan in 3D, real time monitor and visualize events.
* **Utility Monitoring** : Passively tracking Utility metrics via RTLAMR and InfluxDB.
* **Setting up a Magic Mirror** : Setting up a magic mirror and the home automation goodness that comes with it!
</td></tr>
</table>