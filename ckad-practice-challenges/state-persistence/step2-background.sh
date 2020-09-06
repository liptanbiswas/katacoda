#!/bin/bash

cat <<EOF > /tmp/maul-pv.yaml
apiVersion: v1
kind: PersistentVolume
metadata:
  name: maul-pv
spec:
  storageClassName: manual
  capacity:
    storage: 10Mi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: "/mnt/data"
EOF
kubectl apply -f /tmp/maul-pv.yaml
cat <<EOF > /tmp/maul-pvc.yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: maul-pvc
spec:
  storageClassName: manual
  accessModes:
    - ReadWriteMany
  resources:
    requests:
      storage: 10Mi
EOF
kubectl apply -f /tmp/maul-pvc.yaml