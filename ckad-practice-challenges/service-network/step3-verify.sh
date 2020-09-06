#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get service cara -o jsonpath="{.spec.ports[0].nodePort}" | grep -q -w 31888
curl localhost:31888 --connect-timeout 2
echo "done"
