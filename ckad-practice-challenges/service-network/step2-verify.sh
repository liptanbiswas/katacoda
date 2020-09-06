#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl exec ig-11 -- curl greef:8080 --connect-timeout 1
KUBECONFIG=/root/.kube/config kubectl get services greef -o jsonpath='{.spec.type}' | grep -q -w ClusterIP
echo "done"
