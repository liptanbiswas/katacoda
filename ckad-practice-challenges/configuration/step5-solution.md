Solution

---

1.

`kubectl create secret generic db-secret --from-literal='MYSQL_ROOT_PASSWORD=YoYoSecret' --from-literal='MYSQL_PASSWORD=XoXoPassword'`{{execute}}

2.

`kubectl create configmap db-config --from-literal='MYSQL_USER=k8s' --from-literal='MYSQL_DATABASE=newdb'`{{execute}}

3. Create spec file.

```
cat << EOF > mydb.yaml
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: mydb
  name: mydb
spec:
  containers:
  - image: mysql:5.7
    name: mydb
    envFrom:
    - configMapRef:
        name: db-config
    - secretRef:
        name: db-secret
    resources: {}
  dnsPolicy: ClusterFirst
  restartPolicy: Always
status: {}
EOF
```{{execute}}

Create the pod.

`kubectl apply -f mydb.yaml`{{execute}}
---
<br/>
<br/>
