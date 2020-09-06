Solution

---

- `kubectl create ns planets`{{execute}}

- `kubectl create deploy hoth --image=httpd -n planets`{{execute}}

- `kubectl scale deploy hoth --replicas=4  -n planets`{{execute}}

- `kubectl set image deploy hoth httpd=httpd:2.4.46 -n planets`{{execute}}

Now, wait until pods are running.

---
<br/>
<br/>
