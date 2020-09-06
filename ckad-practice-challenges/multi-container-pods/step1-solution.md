Solution

---

1. Create spec file.


```
cat << EOF > mp-hello.yaml
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: mp-hello
  name: mp-hello
spec:
  containers:
  - args:
    - sleep
    - infinity
    image: alpine
    name: alpine
  - image: nginx
    name: nginx
  - image: consul:1.8
    name: consul
EOF
```{{execute}}

- Create the pod.

`kubectl apply -f mp-hello.yaml`{{execute}}



---
<br/>
<br/>
