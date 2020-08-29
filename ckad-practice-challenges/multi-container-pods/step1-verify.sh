#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get po mp-hello -o jsonpath='{.spec.containers[*].image}' | grep -w alpine | grep -w nginx | grep -w "consul:1.8"

KUBECONFIG=/root/.kube/config kubectl exec mp-hello -c $(KUBECONFIG=/root/.kube/config kubectl get po mp-hello -o jsonpath='{.spec.containers[?(@.image=="alpine")].name}') -- sh -c "ps | grep -v grep | grep sleep"

echo "done"
