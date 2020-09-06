Solution

---

- Create spec file.

```
cat << EOF > vader-pod.yaml
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: vader
  name: vader
spec:
  containers:
  - image: nginx
    name: vader
    volumeMounts:
    - mountPath: /var/www/html
      name: vader-vol
  volumes:
  - name: vader-vol
    emptyDir: {}
EOF
```{{execute}}

- Create the pod.

`kubectl apply -f vader-pod.yaml`{{execute}}

---
<br/>
<br/>
