Solution

---

Describe the pod.

`kubectl describe pod tatooine`{{execute}}

Fix the typo in command. Since **command** or **args** both fields are immutable, you will need to export the pod's spec to yaml and recreate the pod.

Get the yaml of pod.

`kubectl get po tatooine -o yaml> tatooine.yaml`{{execute}}

Delete old pod.

`kubectl delete po tatooine`{{execute}}

Fix the command in spec file.

`sed -i s/ssssleep/sleep/g tatooine.yaml`{{execute}}

Create the pod again.

`kubectl apply -f tatooine.yaml`{{execute}}

---
<br/>
<br/>
