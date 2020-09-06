Solution

---

Create the spec file.

```
cat << EOF > geonosis-shield.yaml
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: geonosis-shield
spec:
  podSelector:
    matchLabels:
      sector: arkanis
  ingress:
  - from:
    - podSelector:
        matchLabels:
          empire: "true"
EOF
```{{execute}}

Apply the spec file.

`kubectl apply -f geonosis-shield.yaml`


---
<br/>
<br/>
