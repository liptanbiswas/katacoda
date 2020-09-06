Solution

---

1. Create the PV.

```
cat << EOF > sidious-pv.yaml
apiVersion: v1
kind: PersistentVolume
metadata:
  name: sidious-pv
spec:
  storageClassName: manual
  capacity:
    storage: 200Mi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: "/data/mysql"
EOF
```{{execute}}

`kubectl apply -f sidious-pv.yaml`{{execute}}

2. Create the PVC.

```
cat << EOF > sidious-pvc.yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: sidious-pvc
spec:
  storageClassName: manual
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 200Mi
EOF
```{{execute}}

`kubectl apply -f sidious-pvc.yaml`{{execute}}


3. Create the pod.

```
cat << EOF > sidious.yaml
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: sidious
  name: sidious
spec:
  containers:
  - image: mysql
    name: sidious
    env:
    - name: MYSQL_ROOT_PASSWORD
      value: my-secret-pw
    volumeMounts:
    - mountPath: "/var/lib/mysql"
      name: sidious-vol
  volumes:
    - name: sidious-vol
      persistentVolumeClaim:
        claimName: sidious-pvc
EOF
```{{execute}}

`kubectl apply -f sidious.yaml`{{execute}}

---
<br/>
<br/>
