#!/bin/bash

kubectl create deployment cara --image=httpd
cat <<EOF > /tmp/cara-patch.yaml
spec:
  template:
    spec:
      containers:
      - image: httpd
        imagePullPolicy: Always
        name: httpd
        ports:
        - containerPort: 80
EOF
kubectl patch deployment cara --type merge --patch "$(cat /tmp/cara-patch.yaml)"