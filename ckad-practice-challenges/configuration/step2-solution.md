Solution

---

- Create spec file.
```
cat << EOF > al-pod.yaml
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: al-pod
  name: al-pod
spec:
  containers:
  - image: redis
    name: al-pod
    env:
    - name: AL_USER
      valueFrom:
        configMapKeyRef:
          name: al-conf
          key: al-user
    resources: {}
  dnsPolicy: ClusterFirst
  restartPolicy: Always
status: {}
EOF
```{{execute}}
- Create the pod.

`kubectl apply -f al-pod.yaml`{{execute}}


---
<br/>
<br/>
