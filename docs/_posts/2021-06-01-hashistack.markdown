---
title:  "Hashistack"
date:   2021-06-01 00:00:00
categories: ['hashistack','nomad','terraform','consul','vault']
tags: ['tool:ansible','tool:terraform','tool:consul','tool:docker','tool:git','tool:vault','tool:traefik','tool:nomad','gitops','ci/cd'
]

---

As an alternative approach to this [Kubernetes at Home]({{ site.baseurl }}/2021/k8s-at-home-pt-1/) work, I had been mulling over the idea of baking off the approach against some of hashicorps tools.  Spinning up consul/vault/nomad instances together allows for the creation of a 'hashistack'.  This is still being worked out but I've dropped a [repo](https://github.com/nucstack/hashistack) to detail the work involved.  These services are all designed to interoperate well together and combined with something like traefik, you get me a very simple means to deploy these containerized workloads to the nomad cluster as needed.
