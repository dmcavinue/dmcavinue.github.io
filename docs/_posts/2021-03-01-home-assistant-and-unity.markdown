---
title:  "Home Assistant Floorplan and Unity"
date:   2021-03-01 00:00:00
categories: [home-automation]
tags: ['tool:unity','tool:blender','tool:home-assistant','tool:mqtt','language:C#','language:javascript','tool:docker']
---

Anyone that knows me knows I play a bit too much in home automation.  One loose goal of mine I've been looking to figure out is real time visualizing of my home automation devices.  Ultimately, I wanted to provision a web application that could be dropped on a kiosk (in my case, a magic mirror) that pops up and pan in real time when devices state events occurs.  I'll be going into the magic mirror setup itself later on at some point. This post is just to brain dump the approach I took to get this up and running.

#### **The Setup**
In basic terms, my home automation solution of choice is [Home Assistant](https://www.home-assistant.io/). I have used it successfully for many years and it allows me to manage to my home automation setup declared as code in a github repository.  The backbone communication between things in my setup is a simple MQTT broker, that is responsible for the getting and setting the state of devices in my home. This can be as simple as the state of a light switch or motion sensor but include useful things like the real time power consumption of individual sockets. This broker serves up this state to any authenticated client that needs it, allowing clients to subscribe to realtime changes the state of any device(s) it needs.  I have played with floorplan tools in the past in my deployment, allowing me to overlay my devices on a floorplan of my home and have interactable icons available to view or toggle the state of things.  While this works well, I wanted to take it a step further.

#### **The Goal**
The goal here was to render my house in 3D and build something via Unity that allows some form of client communication to visualize this state in 3D.  Projects like this [aren't new](https://community.home-assistant.io/t/3d-floorplan-using-lovelace-picture-elements-card/123357), I will basically be doing similar to this.  My implementation will be slightly different though, linking to my MQTT broker as opposed to the home assistant API.

#### **The Floorplan**
Unfortunately, I can't go into _too_ much detail on the 3D model of my house itself but here's a screenshot of an outside door thats panned to automatically when opened.
<p align="center">
<img height="50%" width="50%" align="center" src="{{ site.baseurl }}/images/posts/unity-hass/1-unity.png" alt="Unity Demo" />
</p>
I did however throw up a quick demo project [here](https://github.com/dmcavinue/unity-floorplan) that demostrates the basic communication. A given unity gameobject's state is managed by a simple javascript MQTT client from client that loads up the webgl instance and subscribes to device topics via websocket.  With regards to the 3d model, There is plenty of documentation on how to build these out. Really, its down to how much time you want to put into it.  I most definitely put way more time than I shoudl have into it!  My approach was a combination of [Sketchup](https://www.sketchup.com/) to build out the floorplan and some furniture model and [Blender](https://www.blender.org/) to provision things that animate like doors and windows.

#### **How we talk**
Other implementations I have seen have relied on a poll on interval of the Home assistant states API to update all devices and while this worked, I found it too heavy for the quantity of devices and resource intensive on the deployed application.  The approach I used offloads this to a MQTT client subscription that runs client-side at the cost of relying on the client having direct access to the MQTT broker. Most of the process I used is documented [here](https://docs.unity3d.com/Manual/webgl-interactingwithbrowserscripting.html), which allowed for the required  communication between unity instance to the webgl clients javascript engines. You can find the code for this under `./Assets/Plugins/WebGL` in the demo project.

The script at `./Assets/Scripts/MQTTDevice.cs` is expected to be tied to any game objects you would like to automate.  In my example, you will see it associated with the `door-1` and `light-1` gameobjects.  If you inspect these objects, you will see some variables under this component:
- `triggerAnimation` : *Associated gameobject to trigger on animation on/off state*
- `reverseTrigger` : *Reverse Boolean operation of state e.g. false = triggered*

The first variable allows you to trigger the Animation for another gameobject if required. This useful for things like motion sensor gameobjects that trigger door animations.  In theory, this script _can_ be associated with any object as long as its in the scene, but lets keep things somewhat organized.

<p align="center">
@startmermaid
sequenceDiagram
    Client->>WebGL Server: HTTP Call to Server, loads up unity instance
    WebGL Server->>Client: Server returns MQTT broker session info/device topics
    Client->>MQTT Broker: Client spins up JS MQTT client and subscribes to MQTT brokers device topics
    MQTT Broker->>Client: Broker returns device topic events to client
    Client->>WebGL Server: Client triggers associated gameobject animation/state changes
@endmermaid
</p>
This is a 'back of napkin' outline of the intended flow.  As you can see, there are some rough edges.  For example, auth to the MQTT broker under JS probably isn't ideal.

As a quick plug, Its not included in this demo but I suggest checing out the fantastic [Cinemachine](https://unity.com/unity/features/editor/art-and-design/cinemachine) plugin, which allowed me to define virtual camera's that could be triggered to pan to regions as lights turn on, doors/windows open, motion sensors trigger, etc.

#### **The build/deploy**
I have opted to roll the resulting unity WebGL build into a container image, for deployment to my home automation k8s cluster, It hasn't been rolled into a helm chart yet but you can see the basic deployment [here](https://github.com/nucstack/k8s/tree/main/cluster/apps/home-automation/floorplan).  Even though my floorplan model was pretty complex in the end, covering two floors of my house with all furniture and lighting as well as the outside perimeter, the resulting compiled WebGL artifacts were relatively small, at ~40mb uncompressed. There are definitely some fine-tuning opportunities too related to the build to improve performance, load time, etc.  I included a simplified `docker-compose.yml` and `Dockerfile` the the [demo project](https://github.com/dmcavinue/unity-floorplan) to demonstrate rolling the resulting build into a container image.  In all honesty, its a one-liner that loads the build under `nginx:stable`.  In the future, I will likely attempt to reroll this under another provider besides `nginx` that will allow for useful things like env vars. Assuming you build the webgl output to `./build`, yoiu should be able to simply run `docker-compose up` to instantiate this and access it at `http://locahost:4000`.

**Disclaimer:** While it is functional, This example repo is VERY basic, it just demonstrates a single door and light tied to two devices topics under an MQTT Broker.  This is very rough around the edges still

#### **Final Note**
Next steps will probably be some cleanup of environmental configuration as well as allowing for 2 way state. E.g. selecting gameobject devices in unity will perform an MQTT publish against a target topic to toggle lights, etc.  Interestingly, I was actually able to set up this up pretty quickly to deploy to my Oculus Quest 2 as an apk and walk around within this model so that may be an avenue to dive into too.