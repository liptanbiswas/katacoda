Solution

---

1. `kubectl run myenv --image=alpine -- printenv`{{execute}}

    Wait few seconds for pod to run.

2. `kubectl logs myenv > /root/myenv.log`{{execute}}

3. `kubectl delete po myenv`{{execute}}

---
<br/>
<br/>
