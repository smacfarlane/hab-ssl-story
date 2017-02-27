## Habitat Express
##### or 
### "The SSL Story in a Habitat World"

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

### Second pass
#### What story are we trying to tell?

* Show for systems out of compliance
* Remediate 
* Workflow
* ![underpants-gnomes](https://media.tenor.co/images/9ab2c9c1e37aa83f6e1782d94816087a/raw)

---

### Caveats

* haproxy is hard to make insecure and not broken
* 

---

### What's next?

---

### Patching SSL

#### Updating configuration is fine, but OpenSSL needs to be patched

* Need(*) a private depot to show topologies
  * (*) So we don't clutter the public depot
* Build service still under development

---

### Continuous Compliance

* inspec habitat
  * Export inspec controls to .hart 
  * In 1.15.0! 
* inspec in your rings
  * Currently being worked on

---

###