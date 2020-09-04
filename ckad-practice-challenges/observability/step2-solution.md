Solution

---

1. Create spec file.


```
cat << EOF > httptest.yaml
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: httptest
  name: httptest
spec:
  containers:
  - image: kennethreitz/httpbin
    name: httptest
    readinessProbe:
      httpGet:
        path: /status/200
        port: 80
    resources: {}
  dnsPolicy: ClusterFirst
  restartPolicy: Always
status: {}
EOF
```{{execute}}

- Create the pod.

`kubectl apply -f httptest.yaml`{{execute}}


---
<br/>
<br/>
