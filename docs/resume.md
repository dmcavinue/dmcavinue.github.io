
##### **Work Experience**

<table>
<tr>
<thead>
<th>Wayfair<br>Boston, MA</th>
<th>Systems Engineer III/IV<br>Cloud Engineer</th>
<th>Jan 2014 to Feb 2021</th>
</thead>
</tr>
<tr><td colspan="3">
* Developed and Maintained Infrastructure as code for hybrid environments (On-Prem and GCP).
* Developed and Established cost estimation tooling and processes across private/public cloud environments.
* Developed custom terraform module and provider tooling/CI for use self-service in IaC deployments.
* Developed various automations and services to support infrastructure pipeline.
* Developed tooling and pipeline to enable developers to self-service infrastructure as required.
</td></tr>

<tr>
<thead>
<th>Wayfair<br>Ireland, UK, Boston</th>
<th>Systems Engineer I/II<br>Projects Team Manager</th>
<th>Jul 2011 to Jan 2014</th>
</thead>
</tr>
<tr><td colspan="3">
* Tech Resource for all European Offices based in London, Galway and Berlin
* Managed a team of IT Engineers/Projects Team
* Responsible for OS/Application Deployment for all Offices
</td></tr>

<tr>
<thead>
<th>Active Technology Ltd<br>Clare, Ireland</th>
<th>IT Consultant<br>Technician</th>
<th>July 2009 to July 2011</th>
</thead>
</tr>
<tr><td colspan="3">
* Handled the IT side of CCTV, Intruder Alarms and Access Control Systems installs.
* Provided general IT consultancy and Support for customer-based systems.
</td></tr>

<tr>
<thead>
<th>University of Limerick<br>Limerick, Ireland</th>
<th>Postgraduate Researcher</th>
<th>Oct 2008 to Jul 2009</th>
</thead>
</tr>
<tr><td colspan="3">
* Worked as part of a small research team developing an interactive tutoring environment for use in primary school education.
* Investigating modern techniques for the use of interpretation of spoken statements into a query that can be processed and responded to by a computer.  
* The simplest way to describe the goal is a very simple Google Assistant/Amazon Alexa for education before it was so readily available.
</td></tr>
</table>

<div class="pagebreak"></div>
<br>
##### **Skills**

{% assign skills    = 'sccm,active-directory,consul,jenkins,github,vsphere,ansible,puppet,terraform,vagrant,vault,kubernetes,helm,gcp,packer,ci,docker,aws,git' | split: ',' | uniq | sort -%}
{% assign languages = 'java,golang,python,powershell,hcl,bash' | split: ',' | uniq | sort -%}
{% assign others    = 'tailscale,wireguard,windows,linux,esxi,cisco,documentation-as-code,esp32' | split: ',' | uniq | sort -%}

<table>
<tr>
<thead>
<th>Languages</th>
<th>Tools</th>
<th>Other</th>
</thead>
</tr>
<tr>
<td>
<div style="display: inline" class="language-small">
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
* **[Playing with Hashistack]({{ site.baseurl }}/2021/playing-with-hashistack/)** : Setting up Consul/Vault/Nomad in a dance-off versus the k8s@home setup.
* **[Unity3D Floorplan, MQTT & you]({{ site.baseurl }}/2021/home-assistant-and-unity/)** : Render your home floorplan in 3D, real time monitor and visualize events.
* **[Utility Monitoring]({{ site.baseurl }}/2021/passively-monitoring-utilities/)** : Passively tracking Utility metrics via an SDR and ESP32.
</td></tr>
</table>