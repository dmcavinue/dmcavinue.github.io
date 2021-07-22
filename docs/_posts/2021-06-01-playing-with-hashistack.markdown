---
title:  "Playing with Hashistack (a.k.a consul/vault/nomad)"
date:   2021-06-01 00:00:00
categories: ['hashistack','nomad','terraform','consul','vault']
tags: ['tool:ansible','tool:terraform','tool:consul','tool:docker','tool:git','tool:vault','tool:traefik','tool:nomad','gitops','ci/cd'
]

---

As an alternative approach to this [Kubernetes at Home]({{ site.baseurl }}/2021/k8s-at-home-pt-1/) work, I had been mulling over the idea of baking off the approach against some of hashicorp's tools.  Marrying consul/vault/nomad together allows for the creation of a 'hashistack'.  This is still being worked out but I've dropped a [repo](https://github.com/nucstack/hashistack) to detail the work involved in putting this together.  These services are all designed to interoperate well and combined with something like traefik, you get me a very simple means to deploy these containerized workloads to the nomad cluster as needed in a similar fashion to deploying on a kubernetes cluster. You can target specific nodes based on labels.  As you can see, the structure of this repo is very similiar to the k8s@home repo. I'm going to attempt to replicate the responsibilities and deployment process I've set up there.  Ultimately allowing the deployment to scale in a cloud provider as needed. 

###### **Provisioning the instances**
I through together a lazy ansible manifest leveraging the fantastic hashicorp ansible roles by [brianshumate](https://galaxy.ansible.com/brianshumate).  These allowed me to spin up some basic deployments of consul, vault and nomad across my target nodes. These dependencies are all rolled into the included Dockerfile to simplify setting the requirements.  **Disclaimer**: The deployment in the repo is most definitely not production-ready and riddled with security issues and TODOs, but is ideal for my test purposes. 

Since this repo is intended for hand-on playing, I've also decided to throw together some simple tasks under `.taskfiles` to handle some of the operations against the vault and nomad instances once they are alive. E.g unsealing the vault instance once its alive.  This setup includes a basic traefik service set up to allow for definition of ingress to our wrokloads as needed. I do still need to provision ACME for this but it give you an idea of how this works.  I have included a single job in this repo at the moment that spins up a simple grafana deployment on the nomad cluster and defines a service to allow ingress.  It will also deploy docker on all requested nodes, which I will be using as my workload engine.

###### **Secret things**
Once again, I'm using `git-crypt` to encrypt the sensitive things in place.  I can't really leverage vault for this with chickens and eggs being where they are.  In this case, I am encrypting the terraform state as well as the vault secrets.  the environmental variables are untracked and need to be defined based on the `.env.example`. I can kick off the ansible install on my nodes with `task ansible:install`.  Once the ansible install completes, My nodes should all be set up with consul, vault and nomad.  I have set up my environment with a domain that has been set up to upstream DNS requests to these consul nodes too.  A quick hit of the `http://consul.service.<datacenter>.<domain>:8500` proves that it is working as expected.

<p align="center">
<img height="50%" width="50%" align="center" src="{{ site.baseurl }}/images/posts/hashistack/1-consul-services.png" alt="consul-services" /><br>
Ignore the lack of HTTPS
</p>

As you can see, this lists all known service and their healthcheck status. Since consul is set up as the upstream resolver for this domain, These services should as be resolvable too from my workstation at `<service>.service.<datacenter>.<domain>`.  A quick hit of `http://active.vault.service.<datacenter>.<domain>:8200` should get us to the vault ui.

<p align="center">
<img height="50%" width="50%" align="center" src="{{ site.baseurl }}/images/posts/hashistack/3-vault.png" alt="vault" /><br>
Vault UI
</p>

Now on to nomad, browsing to `nomad-servers.service.<datacenter>.<domain>:4646`, brings us to the nomad UI. Time to deploy a job!

<p align="center">
<img height="50%" width="50%" align="center" src="{{ site.baseurl }}/images/posts/hashistack/4-nomad.png" alt="nomad" /><br>
Nomad UI with any jobs defined
</p>

I can deploy the grafana job with `task nomad:start`, which is just set up to deploy the grafana nomad job definition at `nomad/jobs/grafana.nomad`.  This includes everything needed to deploy the grafana  public docker image to the nomad cluster.  It also contains a `service {}` definition for our ingress.


<p align="center">
<img height="50%" width="50%" align="center" src="{{ site.baseurl }}/images/posts/hashistack/5-nomad-grafana.png" alt="nomad-grafana" /><br>
Grafana job defined in Nomad after deployment
</p>

Once deployed, you should then see grafana's service also register in consul:

<p align="center">
<img height="50%" width="50%" align="center" src="{{ site.baseurl }}/images/posts/hashistack/7-consul-grafana.png" alt="consul-grafana" /><br>
Grafana service registered in consul
</p>

...and a quick hit of that host `http://grafana.service.<datacenter>.<domain>` routes us through traefik to our workload application on the nomad instance chosen to run this workload.

<p align="center">
<img height="50%" width="50%" align="center" src="{{ site.baseurl }}/images/posts/hashistack/6-traefik.png" alt="traefik" /><br>
Traefik ingress route for grafana workload
</p>

<p align="center">
<img height="50%" width="50%" align="center" src="{{ site.baseurl }}/images/posts/hashistack/8-grafana.png" alt="grafana" /><br>
Grafana accessed via service ingress
</p>

This a very basic demonstration but you can see the power.  It doesn't come with all of the bells and whistles out of the box that k8s does to define, at least it isn't as apparent.  Expect a further update here once I can get this rolling in a safe and structured way. 

**Important Disclaimer**: I'm not using any TLS/HTTPS in this examples, in an ideal world, you need to make sure you do this.  There is some great documentation on setting up ACME with your hashistack to ensure certs are provisioned and kept up to date (e.g. via letsencrypt).
