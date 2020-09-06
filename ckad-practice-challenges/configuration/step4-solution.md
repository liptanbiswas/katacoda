Solution

---

1. `kubectl run limited-pod --image=busybox --requests='memory=100Mi' --limits='memory=200Mi' --dry-run=client -o yaml > /root/limited-pod.yaml`{{execute}}

---
<br/>
<br/>
