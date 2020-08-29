Solution

---

- Create spec file.

```
cat << EOF > secure-pod.yaml
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: secure-pod
  name: secure-pod
spec:
  securityContext:
    runAsUser: 1000
    runAsGroup: 2000
  containers:
  - image: redis
    name: secure-pod
    resources: {}
  dnsPolicy: ClusterFirst
  restartPolicy: Always
status: {}
EOF
```{{execute}}

- Create the pod.

`kubectl apply -f secure-pod.yaml`{{execute}}

---
<br/>
<br/>
