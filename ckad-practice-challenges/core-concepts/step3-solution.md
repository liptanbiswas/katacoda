1.
```
kubectl run myenv --image=alpine -- printenv
```
2.
```
kubectl logs myenv > /root/myenv.log
```
3.
```
kubectl delete po myenv
```
