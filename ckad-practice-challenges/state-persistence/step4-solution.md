Solution

---

Create the spec file.

```
cat << EOF > dooku-pod.yaml
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: dooku
  name: dooku
spec:
  containers:
  - image: nginx
    name: nginx
    volumeMounts:
    - mountPath: /var/log/dooku
      name: dooku-logs
  - image: redis
    name: redis
    volumeMounts:
    - mountPath: /var/log/dooku
      name: dooku-logs
  volumes:
  - name: dooku-logs
    hostPath:
      path: /data/dooku
EOF
```{{execute}}

Apply the spec file.

`kubectl apply -f dooku-pod.yaml`{{execute}}


---
<br/>
<br/>
