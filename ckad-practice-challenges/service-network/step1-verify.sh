#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get pod ig-11 -o jsonpath='{.spec.containers[0].image}' | grep -q -w "nginx"
KUBECONFIG=/root/.kube/config kubectl get pod ig-11 -o jsonpath='{.spec.containers[0].ports[0].containerPort'} | grep -q -w "80"
echo "done"
