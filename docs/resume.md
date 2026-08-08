---
layout: page
title: ""
permalink: /resume/
additional_tags:
  - "tool:aws"
  - "tool:gke"
  - "tool:eks"
  - "tool:istio"
  - "tool:cilium"
  - "tool:spinnaker"
  - "tool:github-actions"
  - "tool:helm"
  - "language:python"
---

<style>
/* Modern Resume Styles */
:root {
  --primary-color: #16a34a;
  --primary-hover: #15803d;
  --bg-gradient-start: #2d2d2d;
  --bg-gradient-end: #222222;
  --card-bg: #333333;
  --text-main: #f8fafc;
  --text-muted: #cbd5e1;
  --border-color: #444444;
  --shadow-sm: 0 4px 6px -1px rgba(0, 0, 0, 0.2), 0 2px 4px -1px rgba(0, 0, 0, 0.1);
  --shadow-md: 0 10px 15px -3px rgba(0, 0, 0, 0.3), 0 4px 6px -2px rgba(0, 0, 0, 0.2);
  --shadow-hover: 0 20px 25px -5px rgba(0, 0, 0, 0.4), 0 10px 10px -5px rgba(0, 0, 0, 0.2);
  --border-radius: 16px;
  --transition-speed: 0.3s;
}

/* Override global post-container card styles for the resume page */
.post-container {
  background: transparent !important;
  border: none !important;
  box-shadow: none !important;
  padding: 0 !important;
  margin: 0 !important;
}

.resume-wrapper {
  font-family: 'Inter', 'Roboto', 'Helvetica Neue', sans-serif;
  color: var(--text-main);
  background: linear-gradient(135deg, var(--bg-gradient-start) 0%, var(--bg-gradient-end) 100%);
  padding: 1.5rem;
  border-radius: 24px;
  max-width: 900px;
  margin: 0 auto;
  box-shadow: inset 0 2px 4px 0 rgba(255, 255, 255, 0.1);
}

.resume-section {
  margin-bottom: 2.5rem;
  animation: fadeIn 0.8s ease-out;
}

@keyframes fadeIn {
  from { opacity: 0; transform: translateY(20px); }
  to { opacity: 1; transform: translateY(0); }
}

.resume-section-title {
  font-size: 1.8rem;
  font-weight: 800;
  margin-bottom: 2rem;
  color: var(--text-main);
  position: relative;
  display: inline-block;
  letter-spacing: -0.025em;
}

.resume-section-title::after {
  content: '';
  position: absolute;
  left: 0;
  bottom: -6px;
  height: 4px;
  width: 60%;
  background: linear-gradient(90deg, var(--primary-color), transparent);
  border-radius: 2px;
}

.resume-card {
  background: var(--card-bg);
  backdrop-filter: blur(12px);
  -webkit-backdrop-filter: blur(12px);
  border: 1px solid var(--border-color);
  border-radius: var(--border-radius);
  padding: 1.25rem;
  margin-bottom: 1.5rem;
  box-shadow: var(--shadow-md);
  transition: all var(--transition-speed) cubic-bezier(0.4, 0, 0.2, 1);
  position: relative;
  overflow: hidden;
}

.resume-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 4px;
  height: 100%;
  background: var(--primary-color);
  opacity: 0;
  transition: opacity var(--transition-speed);
}

.resume-card:hover {
  transform: translateY(-4px) scale(1.01);
  box-shadow: var(--shadow-hover);
  border-color: rgba(59, 130, 246, 0.3);
}

.resume-card:hover::before {
  opacity: 1;
}

.resume-card-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  flex-wrap: wrap;
  margin-bottom: 1.25rem;
}

.resume-card-title {
  font-size: 1.3rem;
  font-weight: 700;
  color: var(--text-main);
  margin: 0;
}

.resume-card-subtitle {
  font-size: 1.05rem;
  font-weight: 600;
  color: var(--primary-color);
  margin: 0.3rem 0 0 0;
}

.resume-card-meta {
  font-size: 0.9rem;
  color: var(--text-muted);
  text-align: right;
  font-weight: 500;
}

.resume-card-meta .location {
  display: block;
  font-size: 0.85rem;
  margin-top: 0.25rem;
  opacity: 0.8;
}

.resume-list {
  list-style: none;
  padding: 0;
  margin: 0;
}

.resume-list li {
  position: relative;
  padding-left: 1.75rem;
  margin-bottom: 0.85rem;
  line-height: 1.6;
  color: var(--text-main);
}

.resume-list li::before {
  content: '✦';
  position: absolute;
  left: 0;
  top: 3px;
  color: var(--primary-color);
  font-size: 0.8rem;
}

/* Skills Grid */
.skills-grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: 1.5rem;
}

.skill-category {
  background: var(--card-bg);
  border: 1px solid var(--border-color);
  border-radius: var(--border-radius);
  padding: 1.5rem;
  box-shadow: var(--shadow-sm);
  transition: transform var(--transition-speed);
}

.skill-category:hover {
  transform: translateY(-2px);
  box-shadow: var(--shadow-md);
}

.skill-category h4 {
  margin: 0 0 1.25rem 0;
  font-size: 1.15rem;
  font-weight: 700;
  color: var(--text-main);
  border-bottom: 2px solid var(--border-color);
  padding-bottom: 0.75rem;
}

.skill-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 0.6rem;
}

.skill-tag {
  background: #222222;
  color: #f8fafc !important;
  padding: 0.4rem 0.85rem;
  border-radius: 9999px;
  font-size: 0.85rem;
  font-weight: 600;
  text-decoration: none !important;
  transition: all 0.2s ease;
  border: 1px solid #444444;
}

.skill-tag-language {
  background: #3b82f6 !important;
  border-color: #3b82f6 !important;
}

.skill-tag-tool {
  background: #16a34a !important;
  border-color: #16a34a !important;
}

.skill-tag-other {
  background: #000000 !important;
  border-color: #000000 !important;
}

.skill-tag:hover {
  background: #111111;
  color: white !important;
  transform: scale(1.05);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.5);
  border-color: #666666;
}

/* Projects Grid */
.projects-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 1rem;
}

.project-card {
  background: var(--card-bg);
  border: 1px solid var(--border-color);
  border-radius: calc(var(--border-radius) * 0.75);
  padding: 1rem;
  transition: all var(--transition-speed);
  display: flex;
  flex-direction: column;
  gap: 0.6rem;
  text-decoration: none !important;
  color: inherit !important;
}

.project-card:hover {
  border-color: var(--primary-color);
  box-shadow: var(--shadow-md);
  transform: translateX(6px);
  background: linear-gradient(90deg, var(--card-bg), rgba(59, 130, 246, 0.03));
}

.project-title {
  font-weight: 700;
  font-size: 1.05rem;
  color: var(--primary-color);
  display: flex;
  align-items: center;
  gap: 0.5rem;
}

.project-title::after {
  content: '→';
  opacity: 0;
  transform: translateX(-10px);
  transition: all 0.2s ease;
}

.project-card:hover .project-title::after {
  opacity: 1;
  transform: translateX(0);
}

.project-desc {
  font-size: 0.9rem;
  line-height: 1.5;
  color: var(--text-main);
}

/* GitHub Chart */
.github-chart {
  background: var(--card-bg);
  border-radius: var(--border-radius);
  padding: 1.5rem;
  border: 1px solid var(--border-color);
  overflow-x: auto;
  box-shadow: var(--shadow-sm);
  text-align: center;
}

.github-chart img {
  width: 100%;
  max-width: 100%;
  height: auto;
}

.section-layout-table {
  width: 100%;
  table-layout: fixed;
  border: none !important;
  border-collapse: collapse;
}

.section-layout-table thead, .section-layout-table tbody, .section-layout-table tr, .section-layout-table th, .section-layout-table td {
  border: none !important;
  padding: 0 !important;
  text-align: left;
  background: transparent !important;
  color: inherit !important;
  vertical-align: top !important;
}

@media print {
  body {
    background: white !important;
  }
  .resume-wrapper {
    background: none !important;
    box-shadow: none !important;
    padding: 0 !important;
    max-width: 100% !important;
  }
  .resume-card, .skill-category, .github-chart {
    box-shadow: none !important;
    border: 1px solid #cbd5e1 !important;
    border-radius: 8px !important;
    padding: 0.75rem !important;
    margin-bottom: 0.75rem !important;
    break-inside: avoid;
    page-break-inside: avoid;
    overflow: visible !important;
  }
  .resume-card:last-of-type, .skill-category:last-of-type {
    margin-bottom: 0 !important;
  }
  .resume-section {
    margin-bottom: 0 !important;
    padding-bottom: 0.75rem !important;
  }
  .page-break-before {
    break-before: page !important;
    page-break-before: always !important;
  }
  .section-layout-table {
    margin-bottom: 0 !important;
  }
  /* Browsers struggle with printing CSS Grid, fall back to block */
  .skills-grid {
    display: block !important;
  }
  .skills-grid .skill-category {
    margin-bottom: 0.75rem !important;
  }
  .skill-tags {
    gap: 0.35rem !important;
  }
  .resume-list li {
    margin-bottom: 0.4rem !important;
  }
  .no-print {
    display: none !important;
  }
  /* Optimize colors and borders for printers */
  .resume-wrapper, .resume-card-title, .resume-card-subtitle, .resume-list li, .skill-category h4 {
    color: black !important;
  }
  .resume-section-title {
    color: white !important;
    background: black !important;
    border: 1px solid black !important;
    border-radius: 8px !important;
    padding: 0.5rem 1rem !important;
    margin-top: 0.5rem !important;
    margin-bottom: 0.75rem !important;
    display: block !important;
    text-align: center;
    -webkit-print-color-adjust: exact !important;
    print-color-adjust: exact !important;
  }
  .skill-tag {
    background: black !important;
    color: white !important;
    border-color: black !important;
    -webkit-print-color-adjust: exact !important;
    print-color-adjust: exact !important;
  }
  .resume-section-title::after {
    display: none !important;
  }
  .resume-list li::before {
    color: #666 !important;
  }
  .skill-tag, .skill-tag:visited, .skill-tag:hover, .skill-tag:active {
    border: 1px solid black !important;
    background: black !important;
    color: white !important;
    -webkit-print-color-adjust: exact;
    print-color-adjust: exact;
  }
}
</style>

<div class="resume-wrapper">

  <!-- Work Experience -->
  <section class="resume-section">
    <table class="section-layout-table">
      <thead>
        <tr><th><h2 class="resume-section-title">Work Experience</h2></th></tr>
      </thead>
      <tbody>
        <tr><td>
          <div class="resume-card">
          <div class="resume-card-header">
            <div>
              <h3 class="resume-card-title">Verana Health</h3>
              <p class="resume-card-subtitle">Senior Devops Engineer</p>
            </div>
            <div class="resume-card-meta">
              <span>Jan 2026 – Present</span>
              <span class="location">Boston, MA</span>
            </div>
          </div>
          <ul class="resume-list">
            <li>Architecting and executing the migration of newly merged company infrastructure from GCP to AWS, ensuring robust security standards and zero downtime.</li>
            <li>Defining and driving the infrastructure and platform strategy for the newly merged entity, aligning roadmaps to maximize business impact.</li>
            <li>Mentoring platform and product engineers, guiding architecture decisions, and modeling high standards for reliability, security, and maintainability.</li>
          </ul>
        </div>
        </td></tr>
        <tr><td>
          <div class="resume-card">
          <div class="resume-card-header">
            <div>
              <h3 class="resume-card-title">COTA Healthcare</h3>
              <p class="resume-card-subtitle">Senior Infrastructure Engineer</p>
            </div>
            <div class="resume-card-meta">
              <span>Oct 2021 – Jan 2026</span>
              <span class="location">Boston, MA</span>
            </div>
          </div>
          <ul class="resume-list">
            <li>Architected and maintained Infrastructure-as-Code using Terraform across AWS and GCP, embedding security best practices directly into CI/CD pipelines.</li>
            <li>Managed and secured multiple Kubernetes clusters, focusing on cluster hardening, role-based access control (RBAC), network policies, and container vulnerability management.</li>
            <li>Continuous security and compliance initiatives in a highly regulated healthcare environment, ensuring infrastructure met strict HIPAA requirements.</li>
            <li>Owned the observability and monitoring strategy across the platform, defining SLOs, SLIs, and error budgets using metrics, logging, and tracing.</li>
            <li>Implemented secure networking, identity, and access management (IAM) patterns to reduce the blast radius of infrastructure deployments.</li>
          </ul>
        </div>
        </td></tr>
        <tr><td>
          <div class="resume-card">
          <div class="resume-card-header">
            <div>
              <h3 class="resume-card-title">Wayfair</h3>
              <p class="resume-card-subtitle">Systems Engineer III/IV &bull; Cloud Engineer</p>
            </div>
            <div class="resume-card-meta">
              <span>Jan 2014 – Feb 2021</span>
              <span class="location">Boston, MA</span>
            </div>
          </div>
          <ul class="resume-list">
            <li>Engineered and maintained Infrastructure-as-Code for massive-scale hybrid environments (On-Premise and GCP).</li>
            <li>Developed internal developer platforms, SDKs, and custom Terraform providers to enable engineering teams to self-service infrastructure safely and efficiently.</li>
            <li>Built extensive tooling and automation (utilizing Python/Bash) to streamline CI/CD workflows, creating faster feedback loops for developers.</li>
            <li>Led the design and rollout of cost estimation tooling across hybrid cloud environments, optimizing resource usage and cloud spend.</li>
          </ul>
        </div>
        </td></tr>
        <tr><td>
          <div class="resume-card">
          <div class="resume-card-header">
            <div>
              <h3 class="resume-card-title">Wayfair</h3>
              <p class="resume-card-subtitle">Systems Engineer I/II &bull; Projects Team Manager</p>
            </div>
            <div class="resume-card-meta">
              <span>Jul 2011 – Jan 2014</span>
              <span class="location">Ireland, UK, Boston</span>
            </div>
          </div>
          <ul class="resume-list">
            <li>Tech Resource for all European Offices based in London, Galway and Berlin.</li>
            <li>Managed a team of IT Engineers/Projects Team.</li>
            <li>Responsible for OS/Application Deployment for all Offices.</li>
          </ul>
        </div>
        </td></tr>
        <tr><td>
          <div class="resume-card">
          <div class="resume-card-header">
            <div>
              <h3 class="resume-card-title">Active Technology Ltd</h3>
              <p class="resume-card-subtitle">IT Consultant &bull; Technician</p>
            </div>
            <div class="resume-card-meta">
              <span>Jul 2009 – Jul 2011</span>
              <span class="location">Clare, Ireland</span>
            </div>
          </div>
          <ul class="resume-list">
            <li>Handled the IT side of CCTV, Intruder Alarms and Access Control Systems installs.</li>
            <li>Provided general IT consultancy and Support for customer-based systems.</li>
          </ul>
        </div>
        </td></tr>
        <tr><td>
          <div class="resume-card">
          <div class="resume-card-header">
            <div>
              <h3 class="resume-card-title">University of Limerick</h3>
              <p class="resume-card-subtitle">Postgraduate Researcher</p>
            </div>
            <div class="resume-card-meta">
              <span>Oct 2008 – Jul 2009</span>
              <span class="location">Limerick, Ireland</span>
            </div>
          </div>
          <ul class="resume-list">
            <li>Worked as part of a small research team developing an interactive tutoring environment for use in primary school education.</li>
            <li>Investigating modern techniques for the use of interpretation of spoken statements into a query that can be processed and responded to by a computer.</li>
            <li>The simplest way to describe the goal is a very simple Google Assistant/Amazon Alexa for education before it was so readily available.</li>
          </ul>
        </div>
        </td></tr>
      </tbody>
    </table>
  </section>

  <!-- Skills -->
  <section class="resume-section page-break-before">
    <table class="section-layout-table">
      <thead>
        <tr><th><h2 class="resume-section-title">Skills & Technologies</h2></th></tr>
      </thead>
      <tbody><tr><td>

        {% capture all_tags_string %}
          {%- for tag in site.tags -%}{{ tag[0] }},{%- endfor -%}
          {%- if page.additional_tags -%}
            {%- for tag in page.additional_tags -%}{{ tag }},{%- endfor -%}
          {%- endif -%}
        {% endcapture %}
        {% assign sorted_tags = all_tags_string | split: "," | uniq | sort %}
        <div class="skills-grid">
          <div class="skill-category">
            <h4>Languages</h4>
            <div class="skill-tags">
              {% for tag in sorted_tags -%}
                {% if tag == "" %}{% continue %}{% endif -%}
                {% assign kv = tag | split: ":" -%}
                {% if kv.size == 2 and kv[0] == "language" -%}
                  <a href="{{ site.baseurl }}/tags/#{{ tag }}" class="skill-tag skill-tag-language">{{ kv[1] | upcase }}</a>
                {% endif -%}
              {% endfor -%}
            </div>
          </div>
          
          <div class="skill-category">
            <h4>Tools & Platforms</h4>
            <div class="skill-tags">
              {% for tag in sorted_tags -%}
                {% if tag == "" %}{% continue %}{% endif -%}
                {% assign kv = tag | split: ":" -%}
                {% if kv.size == 2 and kv[0] == "tool" -%}
                  <a href="{{ site.baseurl }}/tags/#{{ tag }}" class="skill-tag skill-tag-tool">{{ kv[1] | upcase }}</a>
                {% endif -%}
              {% endfor -%}
            </div>
          </div>
    
          <div class="skill-category">
            <h4>Other</h4>
            <div class="skill-tags">
              {% for tag in sorted_tags -%}
                {% if tag == "" %}{% continue %}{% endif -%}
                {% assign kv = tag | split: ":" -%}
                {% if kv.size != 2 or (kv[0] != "language" and kv[0] != "tool") -%}
                  {% if kv.size == 2 -%}
                    <a href="{{ site.baseurl }}/tags/#{{ tag }}" class="skill-tag skill-tag-other">{{ kv[1] | upcase }}</a>
                  {% else -%}
                    <a href="{{ site.baseurl }}/tags/#{{ tag }}" class="skill-tag skill-tag-other">{{ tag | upcase }}</a>
                  {% endif -%}
                {% endif -%}
              {% endfor -%}
            </div>
          </div>
        </div></td></tr></tbody>
    </table>
  </section>

  <!-- Personal Projects -->
  <section class="resume-section">
    <table class="section-layout-table">
      <thead>
        <tr><th><h2 class="resume-section-title">Personal Projects</h2></th></tr>
      </thead>
      <tbody><tr><td>
    
        <ul class="resume-list">
          <li><strong><a href="{{ site.baseurl }}/2024/centralized-monitoring-observability-at-home/" style="color: inherit; text-decoration: none;">Observability at Home</a>:</strong> Setting up grafana, loki, vector, prometheus and alertmanager at home in a minimilized format to monitor/alert on all things home lab.</li>
          <li><strong><a href="{{ site.baseurl }}/2025/local-ai-with-strix-halo/" style="color: inherit; text-decoration: none;">Local AI</a>:</strong> Playing with local AI for home automation purposes using a Strix Halo node with 128GB unified memory, managed by kubernetes/gitops/flux.</li>
          <li><strong><a href="{{ site.baseurl }}/2026/talos-pi-cluster/" style="color: inherit; text-decoration: none;">Talos PI K8S Cluster</a>:</strong> Talos based Kubernetes cluster at home running as minimally as possible on some raspberry pis, managed with Flux, GitOps.</li>
          <li><strong><a href="{{ site.baseurl }}/2021/k8s-at-home-pt-1/" style="color: inherit; text-decoration: none;">Kubernetes at Home</a>:</strong> Kubernetes cluster at home to handle home automation, managed with Flux, GitOps.</li>
          <li><strong><a href="{{ site.baseurl }}/2021/playing-with-hashistack/" style="color: inherit; text-decoration: none;">Playing with Hashistack</a>:</strong> Setting up Consul/Vault/Nomad in a dance-off versus the k8s@home setup.</li>
          <li><strong><a href="{{ site.baseurl }}/2021/home-assistant-and-unity/" style="color: inherit; text-decoration: none;">Unity3D Floorplan, MQTT & you</a>:</strong> Render your home floorplan in 3D, real time monitor and visualize events.</li>
          <li><strong><a href="{{ site.baseurl }}/2021/passively-monitoring-utilities/" style="color: inherit; text-decoration: none;">Utility Monitoring</a>:</strong> Passively tracking Utility metrics via an SDR and ESP32.</li>
        </ul>
        
      </td></tr></tbody>
    </table>
  </section>

  <!-- GitHub Activity -->
  <section class="resume-section no-print">
    <table class="section-layout-table">
      <thead>
        <tr><th><h2 class="resume-section-title">GitHub Activity</h2></th></tr>
      </thead>
      <tbody><tr><td>
      
        <div class="github-chart">
          <a href="https://github.com/dmcavinue" target="_blank" rel="noopener noreferrer">
            <img src="https://ghchart.rshah.org/2ea043/dmcavinue" alt="Dan's GitHub Contributions" style="filter: invert(1) brightness(2) hue-rotate(180deg);" />
          </a>
        </div>
        
      </td></tr></tbody>
    </table>
  </section>

</div>