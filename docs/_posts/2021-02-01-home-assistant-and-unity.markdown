---
title:  "Home Assistant and Unity"
date:   2021-02-01 15:30:00
categories: [unity,home-assistant,mqtt]
tags: ['tool:unity','tool:kubernetes','tool:home-assistant','tool:mosquitto','language:C#','language:javascript','tool:docker']
---

Anyone that knows me knows I play a bit too much in home automation.  I have a pretty solid Home Automation setup built on top of a mini kubernetes cluster running locally on top of a bunch of Intel NUCs.  For anyone interested, I would recommend checking out the insanely useful set of repositories [here](https://github.com/k8s-at-home).  I'll probably be detailing my setup at some point in the future and it will likely take the form of me porting some of my setup to leverage some of the tooling here.  

#### **The Setup**
In basic terms, my home automation solution of choice is [Home Assistant](https://www.home-assistant.io/). I have used it successfully for many years and it allows me to manage to my home automation setup declared as code in a github repository.  The backbone for my hardware is a simple [MQTT](https://mosquitto.org/) broker, that is responsible for the tracking of changes of devices in my home. This can be as simple as the state of a light switch. This broker serves up this state to any authenticate client that needs it, allowing clients to subscribe to realtime changes the state of any device(s) it needs.  I have played floorplan tools in the past in my deployment, allowing me to overlay my devices on a floorplan of my home and have interactable icons available to view or toggle the state of things.  While this works well, I want to take it a step further.  

#### **The Goal**
The goal here is to render my house in 3D and build something via Unity that allows some form of client communication visulize this state in 3D.  Projects like this [aren't new](https://community.home-assistant.io/t/3d-floorplan-using-lovelace-picture-elements-card/123357), I will basically be doing similar to this.  My implementation wioll be slightly different, linking to my MQTT broker and also attempting to build and deploy the resulting code to my Kubernetes Cluster as a WebGL capable application.

Let's see how this goes...