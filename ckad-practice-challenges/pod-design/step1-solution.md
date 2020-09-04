Solution

---

0. `kubectl create ns planets`{{execute}}


1. `kubectl create deploy hoth --image=httpd -n planets`{{execute}}

2. `kubectl scale deploy hoth --replicas=4  -n planets`{{execute}}

3. `kubectl set image deploy hoth httpd=httpd:2.4.46 -n planets`{{execute}}

---
<br/>
<br/>
