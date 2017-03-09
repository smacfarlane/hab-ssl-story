## Habitat Express
##### or 
### "The SSL Story in a Habitat World"

---

## Before we start 

> Habitat is a new technology to build, deploy and manage applications in any environment, from traditional datacenters to containerized microservices
>
> -- <cite> Nell Shamrell-Harrington </cite>

---

### First pass
#### Replicate bjc_ecommerce 1:1

* Pull apart the cookbook
  * SSL
  * Apache
  * JAVA...
  * Tomcat......

---

![nope](https://media.tenor.co/images/ee84d05f5a6d1e19f630aa7e253c1af3/tenor.gif)

---

### Oh wait... 
(https://github.com/chef-cft/habdemo)

---

### Second pass
#### What story are we trying to tell?

* Show systems out of compliance
* Remediate 
* Workflow
![underpants-gnomes](https://media.tenor.co/images/9ab2c9c1e37aa83f6e1782d94816087a/raw)

---

### Caveats

* haproxy is hard to make insecure and not broken
* 

---

### What's next?

---

### Patching SSL

![tirefire](https://github.com/tirefire/tirefi.re/raw/master/chef/chef_kitchen_fire.gif)

---

* Show update strategies
  * Use channels to control what groups get updates
* Need(*) a private depot to show topologies
  * (*) So we don't clutter the public depot
* Build service still under development
  * Can fake it by having things pre-baked

---

### Continuous Compliance

* inspec habitat
  * Export inspec controls to .hart 
  * In 1.15.0! 
* inspec in your rings
  * Currently being worked on

---

## Nell's presentation on Habitat

https://youtu.be/_04aLq1VuYg

---

https://github.com/smacfarlane/hab-ssl-story
