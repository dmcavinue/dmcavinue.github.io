---
title:  "De-Googling Myself"
date:   2020-11-01 15:30:00
categories: [degoogle,android]
tags: [degoogle,android]
---

It's something that's been troubling me for a while.  While I'm calling this 'degoogling', this isn't necessarily a dig at Google **itself** but more that I depend too much on Google services.  I doubt Google have any intentions of killing any of the services I rely on but they have had backlash in the past for [this](https://killedbygoogle.com/).  My loose goal is to reduce this dependency over time by finding viable alternatives and diversify things a bit.  Along the way, I need to find that fine line of comfort between using managed services and self hosting.  Usually, there is a cost attached to this endeavor.  Services like Gmail, Google Photos, etc that are 'free' usually have a great user experience and functionality at that price tag of your data and I need to be okay with losing some of this.

The core services I need to find alternatives for are:
- **Email**: *Gmail*
- **Phone**: *Android*
- **Photos**: *Google Photos*
- **Storage**: *Google Drive*

#### **Email**
There are plenty of options in the wild, the key questions here are self hosting or running with a managed solution.  Key requirements here are obviously reliability and security.  For managed solution, I'm leaning towards [ProtonMail](https://protonmail.com/), mainly based on recommendations and its seemingly proven track record when it comes to security.  Alternatively, I will be tyre-kicking a self-hosted solution recommended to me called [MailCow](https://mailcow.email/).  While micro-managing my mail server is of no interest to me, this service offering appears to be relatively hands off, has a proven track record and can be run anywhere I need it.

#### **Phone**
This is by far the trickiest one to accomplish, being heavily dependent on app for banking, messaging, etc.  so far my options are to stay somewhat in the android world, leveraging a custom stripped down android distribution like [LineageOS](https://lineageos.org/).  This might let me continue to use some android applications without having to remain fully under google. An alternative approach I'll be investigating is transitioning to a Linux powered phone. I have already purchased a [Pinephone](https://www.pine64.org/pinephone/) which should let me test the waters.  Notably, The specs aren't great and this ecosystem likely isn't ready to be a fully fledged daily driver but worth the investigation.  If it pans out, I may end up looking at higher end options like the [Librem 5](https://puri.sm/products/librem-5/).  In me eyes, this is the ideal scenario, eventually leading to the holy grail of [convergence](https://ubports.com/convergence).

#### **Storage**
At the moment, I use Google Drive as my main storage solution wrapped in additional encryption services and also I made the leap to relocate my photos under Google Photos. Admittedly its a slick offering and 'just works' when everything is under the Google ecosystem.  Most likely I will be relocating my data back to a local NAS as my primary storage solution and configure it to leverage some lower tier storage class as a secure backup solution for this.

#### **Photos**
Building on top of the storage solution above, I'm going to kick the tyres on [PhotoPrism](https://github.com/photoprism/photoprism) to see if it can emulate some of the lost Google Photos functionality.  I suspect shareability will suffer here but we'll see.

Some honorable mentions here are the plethora of android apps I would be losing in this transition. Mainly Banking, Maps and Instant Messaging. Ultimately, My hope is have something reliable, ideally running under Linux that is capable of sandboxing these irreplaceable apps as needed.

Let's see how this goes..