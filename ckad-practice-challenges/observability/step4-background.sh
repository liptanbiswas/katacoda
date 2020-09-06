#!/bin/bash

kubectl run tatooine --image=busybox -- ssssleep infinity


# Deploying metric server for last question.

wget https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.3.7/components.yaml -O /tmp/components.yaml

sed -i '/- --secure-port=4443/a\ \ \ \ \ \ \ \ \ \ - --kubelet-preferred-address-types=InternalIP' /tmp/components.yaml
sed -i '/- --secure-port=4443/a\ \ \ \ \ \ \ \ \ \ - --kubelet-insecure-tls' /tmp/components.yaml

kubectl apply -f /tmp/components.yaml

kubectl create ns dagobah

kubectl run dagobah -n dagobah --image=vish/stress -- -cpus 1