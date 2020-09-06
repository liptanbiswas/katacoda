Solution

---

1. `kubectl expose deployment cara --port=80 --type=NodePort`{{execute}}

Now, manually edit the deployment and change the `nodePort` to `31888`.

Or, you can use patch command as well.

`kubectl patch service cara --patch '{"spec": {"ports": [{"port": 80,"nodePort": 31888}]}}'`{{execute}}

Check if it works bu running `curl localhost:31888`{{execute}}.
---
<br/>
<br/>
