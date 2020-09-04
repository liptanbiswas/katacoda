#!/bin/bash

kubectl create ns skywalker
kubectl run anakin --image busybox -n skywalker --labels=jedi=true -- sleep 10h
kubectl run luke --image redis -n skywalker --labels=jedi=true
kubectl run han --image busybox -n skywalker --labels=jedi=false -- sleep 10h
kubectl run padme --image busybox -n skywalker --labels=jedi=true -- sleep 10h
